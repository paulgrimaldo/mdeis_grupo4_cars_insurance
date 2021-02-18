<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVelicleModelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehicle_models', function (Blueprint $table) {
          $table->bigIncrements('id');
          $table->string('name');
          $table->string('code');
          $table->unsignedBigInteger('vehicle_type_id');
          $table->foreign('vehicle_type_id')->references('id')->on('vehicle_types');
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
        Schema::table('vehicle_models', function (Blueprint $table) {
            //
        });
    }
}
