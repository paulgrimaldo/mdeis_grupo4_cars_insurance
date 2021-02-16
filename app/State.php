<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class State extends Model
{
    protected $table='state';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'name'
    ];
    protected $guarded =[
    ];

}
