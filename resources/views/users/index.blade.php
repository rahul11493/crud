@extends('layouts.app')

@section('content')

<div class="container" style="margin-top:30px">

@if ($message = Session::get('success'))
<div class="alert alert-success alert-block">
	<button type="button" class="close" data-dismiss="alert">×</button>	
        <strong>{{ $message }}</strong>
</div>
@endif

<div class="table-responsive">
<p><a href="{{route('create')}}" class="btn btn-primary pull-right" style="margin-bottom:10px">Add User</a></p>
<table class="table table-bordered">
<thead>
<tr>
  <th>#</th>
  <th>First Name</th>
  <th>Last Name</th>
  <th>Email</th>
  <th>Country Code</th>
  <th>State</th>
  <th>City</th>
  <th>Created At</th>
  <th>Action</th>
</tr>
</thead>
<tbody>
@if(!empty($results))
@foreach($results as $key=>$result)	
<tr>
  <th scope="row">{{$key+1}}</th>
  <td>{{$result->first_name}}</td>
  <td>{{$result->last_name}}</td>
  <td>{{$result->email}}</td>
  <td>{{$result->country->country_code}}</td>
  <td>{{$result->state}}</td>
  <td>{{$result->city}}</td>
  <td>{{$result->created_at}}</td>
  <td>
    <a href="{{route('edit',$result->id)}}"><span class="glyphicon glyphicon-edit" aria-hidden="true" title="Edit" ></span></a>
    <a href="{{route('destroy',$result->id)}}"><span class="glyphicon glyphicon-trash" aria-hidden="true" title="Delete" ></span></a>
  </td>
</tr>
@endforeach
@endif 
</tbody>
</table>

{{ $results->links() }}
</div>
</div>

@endsection