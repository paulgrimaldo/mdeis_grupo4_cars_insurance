<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class StateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('states')->insert(
        [   
        	[
        	'name' => 'Santa Cruz',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'La Paz',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
        	[
        	'name' => 'Cochabamba',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ]
        ]);
    }
}
