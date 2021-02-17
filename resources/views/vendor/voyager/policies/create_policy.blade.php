@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', 'Policies - Create Policy')

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-company"></i>
        Create policy
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <form role="form"
                          class="form-edit-add"
                          action="{{  route('policies.policy.store') }}"
                          method="POST">
                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}
                        <div class="panel-body">
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Quotation</label>
                                <select class="form-control" name="policy_id" aria-hidden="true">
                                    <option value="">None</option>
                                    @foreach($policies as $policy)
                                        <option value="{{$policy->id}}">{{$policy->id}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Date Start</label>
                                <input type="datetime" class="form-control datepicker" name="date_start"
                                       value="">
                            </div>
                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Date End</label>
                                <input type="datetime" class="form-control datepicker" name="date_end"
                                       value="">
                            </div>
                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Discount</label>
                                <input type="number" class="form-control" name="discount"
                                       placeholder="Discount" value="">
                            </div>
                        </div>
                        <div class="panel-footer">
                            @section('submit-buttons')
                                <button type="submit"
                                        class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
                            @stop
                            @yield('submit-buttons')
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@stop
