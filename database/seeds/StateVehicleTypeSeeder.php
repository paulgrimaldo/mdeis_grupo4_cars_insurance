<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class StateVehicleTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('state_vehicle_types')->insert(
        [   
        	[
        	'percentage' => 3.1,
        	'vehicle_type_id' => 1,
        	'state_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 3.0,
        	'vehicle_type_id' => 1,
        	'state_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 2.8,
        	'vehicle_type_id' => 1,
        	'state_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 3.5,
        	'vehicle_type_id' => 2,
        	'state_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 2.5,
        	'vehicle_type_id' => 2,
        	'state_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 2.4,
        	'vehicle_type_id' => 2,
        	'state_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 3.5,
        	'vehicle_type_id' => 3,
        	'state_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 2.5,
        	'vehicle_type_id' => 3,
        	'state_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'percentage' => 2.4,
        	'vehicle_type_id' => 3,
        	'state_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	]



        ]);
    }
}
