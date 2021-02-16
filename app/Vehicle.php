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


    public function vehicle_make()
    {
      return $this->belongsTo('App\VehicleMake','vehicle_make_id','id')->with('vehicle_model');
    }

    public function year()
    {
      return $this->belongsTo('App\Year','year_id','id');
    }

    public function policy()
    {
      return $this->hasOne('App\Policy','vehicle_id','id');
    }


}
