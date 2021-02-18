<?php

namespace App\Http\Controllers;

use App\Driver;
use App\Policy;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $driver = Driver::where('user_id', auth()->id())->first();
        if ($driver == null) {
            abort(403, 'User not configured to view policies');
        }
        $policies = Policy::where(
            [
                'driver_id' => $driver->id,
                'type' => Policy::$POLICY_TYPE
            ]
        )->get();
        return view('home', compact('policies'));
    }

    public function welcome()
    {
        return view('welcome');
    }
}
