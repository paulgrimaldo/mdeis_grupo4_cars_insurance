@extends('layouts.app')

@section('content')

  <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
              <div class="card">
                  <div class="card-header">{{ __('Ver') }}</div>
                  <div class="card-body">
                    <h1 class="display-5">Marcas de Vehiculos</h1>    
                      <div class="row">
                          <div class="col-xs-12 col-sm-12 col-md-12">
                              <div class="form-group">
                                  <strong>Name:</strong>
                                  {{ $vehicle_make->name }}
                              </div>
                          </div>
                          <div class="col-xs-12 col-sm-12 col-md-12">
                              <div class="form-group">
                                  <strong>Code:</strong>
                                  {{ $vehicle_make->code }}
                              </div>
                          </div>

                        </div>
                        <div class="row">
                            <div class="col-md-12 col-lg-12 text-right" style="margin-top:10px;margin-bottom: 10px;">
                                <a class="btn btn-primary" href="{{ route('vehicle_makes.index') }}"> Back</a>
                            </div>
                        </div>                        
                      </div>

                  </div>
                  
              </div>
              
        </div>
    </div>
  </div>

@endsection