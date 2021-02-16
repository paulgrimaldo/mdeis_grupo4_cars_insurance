<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class VehicleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('vehicles')->insert(
        [   
        	[
        	'license_plate' => 'PLC001',
        	'price_vehicle' => 10000,
        	'vehicle_make_id' => 1,
        	'year_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC002',
        	'price_vehicle' => 12000,
        	'vehicle_make_id' => 2,
        	'year_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC003',
        	'price_vehicle' => 13000,
        	'vehicle_make_id' => 3,
        	'year_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC004',
        	'price_vehicle' => 15000,
        	'vehicle_make_id' => 4,
        	'year_id' => 4,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC005',
        	'price_vehicle' => 17000,
        	'vehicle_make_id' => 5,
        	'year_id' => 5,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC006',
        	'price_vehicle' => 22000,
        	'vehicle_make_id' => 6,
        	'year_id' => 6,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC007',
        	'price_vehicle' => 10000,
        	'vehicle_make_id' => 1,
        	'year_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC008',
        	'price_vehicle' => 12000,
        	'vehicle_make_id' => 2,
        	'year_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC009',
        	'price_vehicle' => 13000,
        	'vehicle_make_id' => 3,
        	'year_id' => 4,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC0010',
        	'price_vehicle' => 15000,
        	'vehicle_make_id' => 4,
        	'year_id' => 5,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC0011',
        	'price_vehicle' => 17000,
        	'vehicle_make_id' => 5,
        	'year_id' => 6,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'license_plate' => 'PLC0012',
        	'price_vehicle' => 22000,
        	'vehicle_make_id' => 6,
        	'year_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	]

        ]);
    }
}
  