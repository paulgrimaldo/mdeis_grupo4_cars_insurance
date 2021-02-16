<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class YearSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
 		DB::table('years')->insert(
        [   
        	[
        	'name' => '2016',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        	],
            [
            'name' => '2017',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
            [
            'name' => '2018',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
            [
            'name' => '2019',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],

            [
            'name' => '2020',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ],
            [
            'name' => '2021',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
            ]
        ]);
    }
}
