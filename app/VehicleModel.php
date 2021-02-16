<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VehicleModel extends Model
{
    protected $table='vehicle_models';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'name',
		'code',
		'vehicle_type_id'
    ];
    protected $guarded =[
    ];

}
