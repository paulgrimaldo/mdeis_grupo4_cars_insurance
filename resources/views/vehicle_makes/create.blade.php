@extends('layouts.app')

@section('content-title', ucwords(__('vehicle_makes.plural')))

@include('models.create', [
  'panel_title' => ucwords(__('vehicle_makes.singular')),
  'resource_route' => 'vehicle_makes',
  'model_variable' => 'dummy_model_variable',
  'model_class' => \DummyFullModelClass::class,
])
