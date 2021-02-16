<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Driver extends Model
{
    protected $table='driver';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'first_name',
        'last_name',
        'phone_number',
        'dni',
        'gender',
        'active'
    ];
    protected $guarded =[
    ];

}
