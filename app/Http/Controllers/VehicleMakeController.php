<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\VehicleMake;

/**
 * VehicleMakeController
 */
class VehicleMakeController extends Controller
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
        $vehicle_makes = VehicleMake::all();
        //return view('contacts.index', compact('contacts'));
        return response()->view('vehicle_makes.index', compact('vehicle_makes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // TODO: Create

        return response()->view('vehicle_makes.create');
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
        ]);

        $vehicle_make = new VehicleMake([
            'name' => $request->get('name'),
            'code' => $request->get('code'),
        ]);
        $vehicle_make->save();
        return redirect()->route('vehicle_makes.index')->with('success', 'Contact saved!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(VehicleMake $vehicle_make)
    {
        // TODO: Show
        return view('vehicle_makes.show',compact('vehicle_make'));
        //return response()->view('vehicle_makes.show', /* data */);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $vehicle_make = VehicleMake::find($id);
        /*if ($vehicle_make->exists()) {
            $vehicle_make = new VehicleMake([]);
        }*/
        return response()->view('vehicle_makes.edit', compact('vehicle_make'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     */
    public function update(Request $request, VehicleMake $vehicle_make) {
        $request->validate([
            'name' => 'required',
            'code' => 'required',
        ]);

        $vehicle_make->update($request->all());
        return redirect()->route('vehicle_makes.index')->with('success','Student updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     */
    public function destroy($id)
    {
        // TODO: Destroy
    }
}
