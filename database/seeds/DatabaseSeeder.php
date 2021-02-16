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
        $this->call(VehicleTypeSeeder::class);
        $this->call(VehicleModelSeeder::class);
        $this->call(VehicleMakeSeeder::class);
        $this->call(StateSeeder::class);
        $this->call(BranchOfficeSeeder::class);
        $this->call(StateVehicleTypeSeeder::class);
        $this->call(YearSeeder::class);
        $this->call(VehicleSeeder::class);
        $this->call(DriverSeeder::class);
        $this->call(PolicySeeder::class);
        
        
    }
}
