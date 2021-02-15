<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\VehicleModel;

/**
 * VehicleModelController
 */
class VehicleModelController extends Controller
{
    /**
    * Instantiate a new controller instance.
    *
    * @return void
    */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // TODO: Index
        $vehicle_models = VehicleModel::all();
        //return view('contacts.index', compact('contacts'));
        return response()->view('vehicle_models.index', compact('vehicle_models'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // TODO: Create

        return response()->view('vehicle_models.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'code'=>'required',
            'make_id'=>'required'
        ]);

        $contact = new Contact([
            'name' => $request->get('first_name'),
            'code' => $request->get('last_name'),
        ]);
        $contact->save();
        return redirect('/vehicle_models.index')->with('success', 'Contact saved!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // TODO: Show
        $vehicle_model = VehicleModel::find($id);
        return response()->view('vehicle_models.show', $vehicle_model);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $vehicle_model = VehicleModel::find($id);
        return response()->view('vehicle_models.edit', $vehicle_model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'first_name'=>'required',
            'last_name'=>'required',
            'email'=>'required'
        ]);

        $contact = VehicleModel::find($id);
        $contact->first_name =  $request->get('first_name');
        $contact->last_name = $request->get('last_name');
        $contact->email = $request->get('email');
        $contact->job_title = $request->get('job_title');
        $contact->city = $request->get('city');
        $contact->country = $request->get('country');
        $contact->save();

        return redirect('/contacts')->with('success', 'Contact updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     */
    public function destroy($id)
    {
        $vehicle_model = VehicleModel::find($id);
        $vehicle_model->delete();

        return redirect('/vehicle_models')->with('success', 'Contact deleted!');
    }
}
