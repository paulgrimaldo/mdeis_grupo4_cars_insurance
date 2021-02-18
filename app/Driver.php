<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Driver extends Model
{
    protected $table='drivers';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'first_name',
        'last_name',
        'phone_number',
        'dni',
        'gender',
        'active',
        'user_id'
    ];
    protected $guarded =[
    ];


    public function policies()
    {
      return $this->hasMany('App\Policy','driver_id','id');
    }



}
