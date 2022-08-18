@extends('layouts.app')

@section('content')

<div class="container" style="margin-top:30px">

@if ($message = Session::get('error'))
<div class="alert alert-danger alert-block">
	<button type="button" class="close" data-dismiss="alert">×</button>	
        <strong>{{ $message }}</strong>
</div>
@endif

<fieldset class="border">
<div class="col-12 col-sm-12 col-md-12">
<h2 style="text-align: center;">Add User Details</h2>
<form action="{{route('store')}}" method="POST" enctype="multipart/form-data">
@csrf	
<div class="row">
	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>First Name</label>
		<input type="text" name="first_name" class="form-control" placeholder="First Name" value="{{ Request::old('first_name') }}">
	</div>

	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>Last Name</label>
		<input type="text" name="last_name" class="form-control" placeholder="Last Name" value="{{ Request::old('last_name') }}">
	</div>
	
	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>Email Id</label>
		<input type="text" name="email" class="form-control" placeholder="Email Id" value="{{ Request::old('email') }}">
	</div>
	
	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>Country</label>
		<select name="country_id" class="form-control">  
		<option value="">Select</option>
		@foreach($country as $cntry)
		<option value="{{$cntry->id}}" {{($cntry->id == Request::old('country_id'))?'selected':''}}>{{$cntry->country_code}}</option>
		@endforeach         
		</select>		
	</div>
	
	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>State</label>
		<input type="text" name="state" class="form-control" placeholder="State" value="{{ Request::old('state') }}">
	</div>

	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>City</label>
		<input type="text" name="city" class="form-control" placeholder="City" value="{{ Request::old('city') }}">
	</div>	
	
	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>Password</label>
		<input type="text" name="password" class="form-control" placeholder="Password" value="{{ Request::old('password') }}">
	</div>
	
	<div class="col-12 col-sm-4 col-md-4 form-group">
		<label>Confirm Password</label>
		<input type="text" name="confirm_password" class="form-control" placeholder="Confirm Password" value="{{ Request::old('confirm_password') }}">
	</div>	
	
	<div class="col-12 col-sm-12 col-md-12 form-group">
		<label>Terms & Conditions</label>
		<input type="checkbox" name="terms_condition" value="1" value="{{ Request::old('terms_condition') }}">
	</div>

	<div class="col-12 col-sm-12 col-md-12 text-center">
	<button type="submit" class="btn btn-primary">Submit</button >
	</div>
</div>
</form>
</div>
</fieldset>
</div>	

@endsection


<style>
.border{
    border: 1px solid silver !important;
    margin: 0 2px;
    padding: 10px 0 0 0;
}	
</style>	