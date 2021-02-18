<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class BranchOfficeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('branch_offices')->insert(
        [   
        	[
        	'name' => 'Sucursal Sz 1',
        	'address' => 'address',
        	'discount_min' => 2.5,
        	'state_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
        	[
        	'name' => 'Sucursal Sz 2',
        	'address' => 'address',
        	'discount_min' => 2.5,
        	'state_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Sucursal Lpaz 1',
        	'address' => 'address',
        	'discount_min' => 2.5,
        	'state_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Sucursal Lpaz 2',
        	'address' => 'address',
        	'discount_min' => 2.5,
        	'state_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Sucursal Cbba 1',
        	'address' => 'address',
        	'discount_min' => 2.5,
        	'state_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Sucursal Cbba 2',
        	'address' => 'address',
        	'discount_min' => 2.5,
        	'state_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ]
        ]);
    }
}
