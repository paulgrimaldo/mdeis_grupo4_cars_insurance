<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StateVehicleType extends Model
{
    protected $table='state_vehicle_types';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'percentage',
		'vehicle_type_id',
		'state_id'
    ];
    protected $guarded =[
    ];
}
