<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePoliciesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('policies', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('policy_number');
            $table->date('policy_effective_date');
            $table->double('total_amount',12, 2);   
            $table->tinyInteger('active');
            $table->date('date_start');
            $table->date('date_end');
            $table->tinyInteger('type');
            $table->double('discount',12, 2);   
            $table->double('amount',12, 2);   
            $table->unsignedBigInteger('vehicle_id');
            $table->foreign('vehicle_id')->references('id')->on('vehicles'); 
            $table->unsignedBigInteger('driver_id');
            $table->foreign('driver_id')->references('id')->on('drivers');  
            $table->unsignedBigInteger('branch_office_id');
            $table->foreign('branch_office_id')->references('id')->on('branch_offices');            
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
        Schema::dropIfExists('policies');
    }
}
