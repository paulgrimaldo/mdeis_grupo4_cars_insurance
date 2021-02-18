<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Policy;
use App\BranchOffice;

class ReportController extends Controller
{
    public function index()
    {
        $date = date('Y-m-d');
        $branch_officies = BranchOffice::get();
        return view('reports.index',['date'=>$date,'branch_officies'=>$branch_officies]);
    }


    public function quotation(Request $request)
    {
    	$result = [['gender'=>'masculino','number'=>5],['gender'=>'femenino','number'=>5]];
        $dateStart = $request->input('dateStart');
        $dateEnd = $request->input('dateEnd');
        $branchOfficeId = $request->input('branchOfficeId');
        $data = [];
        if($branchOfficeId==""){
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->where('policy_effective_date', '>=', $dateStart)
	    	->where('policy_effective_date', '<=', $dateEnd)
	    	->where('type', 1)
	    	->where('active', 1)
	    	->get();
        }else{
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->whereHas('branch_office', function ($query) use($branchOfficeId){
			    return $query->where('id',  $branchOfficeId);
			})->where('policy_effective_date', '>=', $dateStart)
	    	->where('policy_effective_date', '<=', $dateEnd)
	    	->where('type', 1)
	    	->where('active', 1)
	    	->get();	
        }

        $fecha = date('Y-m-d');
        $view = \View::make('reports.quotation', compact('data', 'dateStart', 'dateEnd','result'))->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream();

    }


    public function policy(Request $request)
    {
        $dateStart = $request->input('dateStart');
        $dateEnd = $request->input('dateEnd');
        $branchOfficeId = $request->input('branchOfficeId');
        $data = [];
        if($branchOfficeId==""){
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->where('policy_effective_date', '>=', $dateStart)
	    	->where('policy_effective_date', '<=', $dateEnd)
	    	->where('type', 2)
	    	->where('active', 1)
	    	->get();
        }else{
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->whereHas('branch_office', function ($query) use($branchOfficeId){
			    return $query->where('id',  $branchOfficeId);
			})->where('policy_effective_date', '>=', $dateStart)
	    	->where('policy_effective_date', '<=', $dateEnd)
	    	->where('type', 2)
	    	->where('active', 1)
	    	->get();	
        }
        $fecha = date('Y-m-d');
        $view = \View::make('reports.policy', compact('data', 'dateStart', 'dateEnd'))->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream();

    }


    public function quotation_unconfirmed(Request $request)
    {
        $dateStart = $request->input('dateStart');
        $dateEnd = $request->input('dateEnd');
        $branchOfficeId = $request->input('branchOfficeId');
        $data = [];
        if($branchOfficeId==""){
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->where('policy_effective_date', '>=', $dateStart)
	    	->where('policy_effective_date', '<=', $dateEnd)
	    	->where('type', 1)
	    	->where('active', 0)
	    	->get();
        }else{
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->whereHas('branch_office', function ($query) use($branchOfficeId){
			    return $query->where('id',  $branchOfficeId);
			})->where('policy_effective_date', '>=', $dateStart)
	    	->where('policy_effective_date', '<=', $dateEnd)
	    	->where('type', 1)
	    	->where('active', 0)
	    	->get();	
        }
        $fecha = date('Y-m-d');
        $view = \View::make('reports.quotation_unconfirmed', compact('data', 'dateStart', 'dateEnd'))->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream();

    }

    public function policy_expire(Request $request)
    {
        $dateStart = $request->input('dateStart');
        $dateEnd = $request->input('dateEnd');
        $branchOfficeId = $request->input('branchOfficeId');
        $data = [];
        if($branchOfficeId==""){
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->where('date_end', '>=', $dateStart)
	    	->where('date_end', '<=', $dateEnd)
	    	->where('type', 2)
	    	->where('active', 1)
	    	->get();
        }else{
	    	$data = Policy::with('vehicle')->with('driver')->with('branch_office')->whereHas('branch_office', function ($query) use($branchOfficeId){
			    return $query->where('id',  $branchOfficeId);
			})->where('date_end', '>=', $dateStart)
	    	->where('date_end', '<=', $dateEnd)
	    	->where('type', 2)
	    	->where('active', 1)
	    	->get();	
        }
        $fecha = date('Y-m-d');
        $view = \View::make('reports.policy_expire', compact('data', 'dateStart', 'dateEnd'))->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream();

    }
}
