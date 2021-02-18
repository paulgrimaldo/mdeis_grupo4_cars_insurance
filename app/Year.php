<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Year extends Model
{
    protected $table='years';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'name'
    ];
    protected $guarded =[
    ];
}
