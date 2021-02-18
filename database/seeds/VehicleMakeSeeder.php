<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class VehicleMakeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('vehicle_makes')->insert(
        [   
        	[
        	'name' => 'Vehiculo 1',
        	'code' => '001',
        	'vehicle_model_id'=>1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Vehiculo 2',
        	'code' => '002',
        	'vehicle_model_id'=>2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Vehiculo 3',
        	'code' => '003',
        	'vehicle_model_id'=>3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Vehiculo 4',
        	'code' => '004',
        	'vehicle_model_id'=>4,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Vehiculo 5',
        	'code' => '005',
        	'vehicle_model_id'=>5,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Vehiculo 6',
        	'code' => '006',
        	'vehicle_model_id'=>6,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ]
        ]);
    }
}
