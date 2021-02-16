<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vehicle extends Model
{
    protected $table='vehicles';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'license_plate',	
		'price_vehicle',
        'vehicle_make_id',
        'year_id'
    ];
    protected $guarded =[
    ];

}
