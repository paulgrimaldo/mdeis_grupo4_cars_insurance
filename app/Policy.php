<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Policy extends Model
{
    protected $table = 'policies';
    protected $primaryKey = 'id';
    public $timestamps = true;
    protected $fillable = [
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
    protected $guarded = [
    ];

    public function vehicle()
    {
        return $this->belongsTo('App\Vehicle', 'vehicle_id', 'id')->with('vehicle_make')->with('year');
    }


    public function driver()
    {
        return $this->belongsTo('App\Driver', 'driver_id', 'id');
    }


    public function branch_office()
    {
        return $this->belongsTo('App\BranchOffice', 'branch_office_id', 'id');
    }


    public static $QUOTATION_TYPE = 1;
    public static $POLICY_TYPE = 2;
}
