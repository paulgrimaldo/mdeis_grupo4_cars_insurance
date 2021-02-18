<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class VehicleModelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('vehicle_models')->insert(
        [   
        	[
        	'name' => 'Modelo 1',
        	'code' => '001',
        	'vehicle_type_id'=>1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Modelo 2',
        	'code' => '002',
        	'vehicle_type_id'=>1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Modelo 3',
        	'code' => '003',
        	'vehicle_type_id'=>1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Modelo 4',
        	'code' => '004',
        	'vehicle_type_id'=>2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Modelo 5',
        	'code' => '005',
        	'vehicle_type_id'=>3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Modelo 6',
        	'code' => '006',
        	'vehicle_type_id'=>3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ]
        ]);
    }
}
