<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VehicleMake extends Model
{
    protected $table='vehicle_makes';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'name',
		'code',
        'logo',
		'vehicle_model_id'
    ];
    protected $guarded =[
    ];


    public function vehicle_model()
    {
      return $this->belongsTo('App\VehicleModel','vehicle_model_id','id');
    }

}
