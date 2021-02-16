<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class VehicleTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('vehicle_types')->insert(
        [   
        	[
        	'name' => 'Vagoneta',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Jeep',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Camioneta',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ]
        ]);
    }
}
