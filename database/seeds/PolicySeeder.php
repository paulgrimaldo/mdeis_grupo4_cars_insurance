<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class PolicySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('policies')->insert(
        [   
        	[
        	'policy_number' => 1000,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 300,
        	'active' => 0,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 1,
        	'discount' => 0.0,
        	'amount' => 300,
        	'vehicle_id' => 1,
        	'driver_id' => 1,
        	'branch_office_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1001,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 600,
        	'active' => 1,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYears(2)->toDateString(),
        	'type' => 2,
        	'discount' => 0.0,
        	'amount' => 300,
        	'vehicle_id' => 2,
        	'driver_id' => 2,
        	'branch_office_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1002,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 300,
        	'active' => 0,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 2,
        	'discount' => 0.0,
        	'amount' => 300,
        	'vehicle_id' => 3,
        	'driver_id' => 3,
        	'branch_office_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1004,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 400,
        	'active' => 1,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 2,
        	'discount' => 0.0,
        	'amount' => 400,
        	'vehicle_id' => 4,
        	'driver_id' => 4,
        	'branch_office_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1005,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 450,
        	'active' => 1,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 2,
        	'discount' => 0.0,
        	'amount' => 450,
        	'vehicle_id' => 5,
        	'driver_id' => 5,
        	'branch_office_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1006,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 1800,
        	'active' => 0,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYears(3)->toDateString(),
        	'type' => 1,
        	'discount' => 0.0,
        	'amount' => 600,
        	'vehicle_id' => 6,
        	'driver_id' => 6,
        	'branch_office_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1007,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 300,
        	'active' => 0,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 1,
        	'discount' => 0.0,
        	'amount' => 300,
        	'vehicle_id' => 7,
        	'driver_id' => 7,
        	'branch_office_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1008,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 550,
        	'active' => 0,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 1,
        	'discount' => 0.0,
        	'amount' => 550,
        	'vehicle_id' => 8,
        	'driver_id' => 8,
        	'branch_office_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1009,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 345,
        	'active' => 0,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 1,
        	'discount' => 0.0,
        	'amount' => 345,
        	'vehicle_id' => 9,
        	'driver_id' => 9,
        	'branch_office_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],

        	[
        	'policy_number' => 1010,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 800,
        	'active' => 1,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 2,
        	'discount' => 0.0,
        	'amount' => 800,
        	'vehicle_id' => 10,
        	'driver_id' => 10,
        	'branch_office_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1011,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 450,
        	'active' => 0,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYear()->toDateString(),
        	'type' => 2,
        	'discount' => 0.0,
        	'amount' => 450,
        	'vehicle_id' => 11,
        	'driver_id' => 11,
        	'branch_office_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'policy_number' => 1012,
        	'policy_effective_date' => Carbon::now()->toDateString(),
        	'total_amount' => 1500,
        	'active' => 1,
        	'date_start' => Carbon::now()->toDateString(),
        	'date_end' => Carbon::now()->addYears(5)->toDateString(),
        	'type' => 2,
        	'discount' => 0.0,
        	'amount' => 1500,
        	'vehicle_id' => 12,
        	'driver_id' => 12,
        	'branch_office_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	]
        ]);
    }
}
          