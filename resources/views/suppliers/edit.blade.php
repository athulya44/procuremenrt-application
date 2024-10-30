
@extends('pro-admin.index')
@section('content')
<div class="container">
  <h2>Edit</h2>
 <form action="{{ route('suppliers.update',$supplier->id) }}" method="POST">
    @csrf
    <div class="form-group">
    <label for="content">Supplier Name:</label>
    <input type="text" name="supplier_name" placeholder="Enter  Name" class="form-control" value="{{$supplier->supplier_name}}">
    </div>
    <div class="form-group">
       <label for="content">Address:</label>
      <textarea name="address" id=""  placeholder="Enter  Address" class="form-control">{{$supplier->address}}</textarea>
    </div>

    <div class="form-group">
    <label for="tax_no">Tax No:</label>
    <input type="text" name="tax_no" placeholder="Enter Tax No" class="form-control"  value="{{$supplier->tax_no}}">
    </div>
    <!-- <div class="form-group">
    <label for="country">Country:</label>
    <input type="text" name="country" placeholder="Enter Country" class="form-control"  value="{{$supplier->country}}">
    </div> -->
    <div class="form-group">
        <label for="country">Country:</label>
        <select name="country" class="form-control">
            <option value="">{{$supplier->country}}</option>
            @foreach($countries as $country)
                <option value="{{ $country->name }}">{{ $country->name }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
    <label for="mobile_no">Mobile No:</label>
    <input type="text" name="mobile_no" placeholder="Enter Mobile No" class="form-control" value="{{$supplier->mobile_no}}">
    </div>
    <div class="form-group">
    <label for="email">Email:</label>
    <input type="text" name="email" placeholder="Enter Email" class="form-control" value="{{$supplier->email}}">
    </div>
    
    
    <button type="submit" class="btn btn-success">Update</button>

  </form>
  <a href="{{ route('suppliers.index') }}">Back to All Posts</a>
</div>



@endsection