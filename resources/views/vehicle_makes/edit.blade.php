@extends('layouts.app')

@section('content')
<div class="row">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-3">Add a Vehicle</h1>
  <div>
    @include( 'vehicle_makes/form', array( 'vehicle_make' => $vehicle_make ) )
  </div>
</div>
</div>
@endsection