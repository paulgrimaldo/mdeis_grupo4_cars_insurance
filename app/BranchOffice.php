<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BranchOffice extends Model
{
    protected $table='branch_offices';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'name',
		'address',
		'discount_min',
		'state_id'
    ];
    protected $guarded =[
    ];
}
