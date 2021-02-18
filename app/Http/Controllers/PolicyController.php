<?php

namespace App\Http\Controllers;


use App\BranchOffice;
use App\Policy;
use App\StateVehicleType;
use App\Vehicle;
use App\VehicleMake;
use App\VehicleModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

class PolicyController extends VoyagerBaseController
{
    public function store(Request $request)
    {
        $vehicle = Vehicle::findOrFail($request->get('vehicle_id'));
        $vehicleMake = VehicleMake::where('id', $vehicle->vehicle_make_id)->first();
        $vehicleModel = VehicleModel::where('id', $vehicleMake->vehicle_model_id)->first();
        $branchOffice = BranchOffice::findOrFail($request->get('branch_office_id'));
        $stateVehicleType = StateVehicleType::where([
            'state_id' => $branchOffice->state_id,
            'vehicle_type_id' => $vehicleModel->vehicle_type_id
        ])->first();

        $policy = new Policy();
        $policy->branch_office_id = $request->get('branch_office_id');
        $policy->vehicle_id = $request->get('vehicle_id');
        $policy->driver_id = $request->get('driver_id');
        $policy->type = Policy::$QUOTATION_TYPE;
        $policy->policy_effective_date = Carbon::now()->toDateString();
        $policy->active = 1;

        $startDate = Carbon::parse($request->get('date_start'));
        $endDate = $request->get('date_end') == null
            ? $startDate->addYear()
            : Carbon::parse($request->get('date_end'));

        $quotationPrice = $stateVehicleType->percentage;
        if ($startDate->diffInYears($endDate) > 1) {
            $quotationPrice = $stateVehicleType->percentage * $startDate->diffInYears($endDate);
        } elseif ($startDate->diffInYears($endDate) == 0) {
            $quotationPrice = $stateVehicleType->percentage * ($startDate->diffInMonths($endDate) / 12);
        }
        $policy->date_start = $startDate->toDateTimeString();
        $policy->date_end = $endDate->toDateTimeString();
        $amount = $vehicle->price_vehicle * $quotationPrice;
        $policy->discount = 0;
        $policy->amount = $amount;
        $policy->total_amount = $amount;
        $policy->save();
        $policy->policy_number = $policy->id + 1000;
        $policy->save();

        return back()
            ->with([
                'message' => __('voyager::generic.successfully_added_new') . "Policy",
                'alert-type' => 'success',
            ]);
    }

    public function createPolicy(Request $request)
    {
        $policies = Policy::where('type', Policy::$QUOTATION_TYPE)->get();
        return view('vendor.voyager.policies.create_policy', compact('policies'));
    }

    public function storePolicy(Request $request)
    {
        $policy = Policy::findOrFail($request->get('policy_id'));
        $vehicle = Vehicle::findOrFail($policy->vehicle_id);
        $vehicleMake = VehicleMake::where('id', $vehicle->vehicle_make_id)->first();
        $vehicleModel = VehicleModel::where('id', $vehicleMake->vehicle_model_id)->first();
        $branchOffice = BranchOffice::findOrFail($policy->branch_office_id);
        $stateVehicleType = StateVehicleType::where([
            'state_id' => $branchOffice->state_id,
            'vehicle_type_id' => $vehicleModel->vehicle_type_id
        ])->first();

        $startDate = $request->get('date_start') != null ?
            Carbon::parse($request->get('date_start')) :
            Carbon::parse($policy->date_start);
        $endDate = $request->get('date_end') != null ?
            Carbon::parse($request->get('date_end')) :
            Carbon::parse($policy->date_end);
        $policy->date_start = $startDate;
        $policy->date_end = $endDate;

        $quotationPrice = $stateVehicleType->percentage;
        if ($startDate->diffInYears($endDate) > 1) {
            $quotationPrice = $stateVehicleType->percentage * $startDate->diffInYears($endDate);
        } elseif ($startDate->diffInYears($endDate) == 0) {
            $quotationPrice = $stateVehicleType->percentage * ($startDate->diffInMonths($endDate) / 12);
        }
        $amount = $vehicle->price_vehicle * $quotationPrice;
        $policy->amount = $amount;
        $policy->total_amount = $amount;
        $policy->discount = 0;

        $discount = $request->get('discount');
        if ($discount != null) {
            if ($discount > $policy->branch_office->discount_min) {
                return back()->withErrors(['The discount is above the max discount for the branch office']);
            }
            $policy->discount = $amount * $discount * (1 / 100);
            $policy->total_amount = $amount - $policy->discount;
        }
        $policy->type = Policy::$POLICY_TYPE;
        $policy->save();

        return back()
            ->with([
                'message' => __('voyager::generic.successfully_added_new') . "Policy",
                'alert-type' => 'success',
            ]);
    }

    public function viewDetail(Policy $policy)
    {
        $view = \View::make('policies.show', compact('policy'))->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream();
    }

    public function viewSign(Policy $policy)
    {
        return view('policies.signing', compact('policy'));
    }

    public function sign(Policy $policy, Request $request)
    {
        if ($request->sign != 'on') {
            abort(500, "Can't store the signature");
        }
        $policy->signed = 1;
        $policy->signed_at = Carbon::now()->toDateTimeString();
        $policy->save();
        return redirect()->route('home')->with(['status' => 'Policy signed successfully']);
    }
}
