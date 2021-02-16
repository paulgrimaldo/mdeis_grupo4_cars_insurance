<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $this->call(VehicleMakesTableSeeder::class);
        $this->call(VehicleModelsTableSeeder::class);
        $this->call(VehicleTypesTableSeeder::class);
    }
}
