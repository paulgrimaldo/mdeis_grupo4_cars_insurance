<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VehicleType extends Model
{
    protected $table='vehicle_types';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'name'
    ];
    protected $guarded =[
    ];

}
