

@extends('pro-admin.index')
@section('content')
<div class="container">
  <h2>Show</h2>

    <div class="form-group">
    <label for="content">Supplier Name:</label>
    {{$supplier->supplier_name}}
    <!-- <input type="text" name="supplier_name" placeholder="Enter  Name" class="form-control" value="{{$supplier->supplier_name}}"> -->
    </div>
    <div class="form-group">
       <label for="content">Address:</label>
       {{$supplier->address}}
      <!-- <textarea name="address" id=""  placeholder="Enter  Address" class="form-control">{{$supplier->address}}</textarea> -->
    </div>

    <div class="form-group">
    <label for="tax_no">Tax No:</label>
    {{$supplier->tax_no}}
    <!-- <input type="text" name="tax_no" placeholder="Enter Tax No" class="form-control"  value="{{$supplier->tax_no}}"> -->
    </div>
    <div class="form-group">
    <label for="country">Country:</label>
    {{$supplier->country}}
    </div>
    <div class="form-group">
    <label for="mobile_no">Mobile No:</label>
    {{$supplier->mobile_no}}
    <!-- <input type="text" name="mobile_no" placeholder="Enter Mobile No" class="form-control" value="{{$supplier->mobile_no}}"> -->
    </div>
    <div class="form-group">
    <label for="email">Email:</label>
    {{$supplier->email}}
    <!-- <input type="text" name="email" placeholder="Enter Email" class="form-control" value="{{$supplier->email}}"> -->
    </div>
    
    
  
  <a href="{{ route('suppliers.index') }}">Back to All Posts</a>
</div>


@endsection
