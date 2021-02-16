<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Policy extends Model
{
    protected $table='policies';
    protected $primaryKey='id';
    public $timestamps=true;
    protected $fillable =[
		'policy_number',	
		'policy_effective_date',
        'total_amount',
        'active',
        'date_start',
        'date_end',
        'type',
        'discount',
        'amount',
        'vehicle_id',
        'driver_id',
        'branch_office_id'
    ];
    protected $guarded =[
    ];
        

}
