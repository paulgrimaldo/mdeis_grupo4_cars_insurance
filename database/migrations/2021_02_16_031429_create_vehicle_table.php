<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVehicleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehicle', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('license_plate');
            $table->double('price_vehicle',12, 2);   
            $table->unsignedBigInteger('vehicle_make_id');
            $table->foreign('vehicle_make_id')->references('id')->on('vehicle_make');
            $table->unsignedBigInteger('year_id');
            $table->foreign('year_id')->references('id')->on('year');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vehicle');
    }
}
