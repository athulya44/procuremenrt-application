
@extends('pro-admin.index')
@section('content')
<div class="container">
  <h2>Create Supplier</h2>
  <form action="{{ route('suppliers.store') }}" method="POST">
       @csrf
       <div class="form-group">
           <label for="content">Supplier Name:</label>
           <input type="text" name="supplier_name" placeholder="Enter Name" class="form-control" required>
       </div>
       <div class="form-group">
           <label for="content">Address:</label>
           <textarea name="address" placeholder="Enter Address" class="form-control" required></textarea>
       </div>
       <div class="form-group">
           <label for="taxno">Tax No:</label>
           <input type="text" name="tax_no" placeholder="Enter Tax No" class="form-control" required>
       </div>
       <!-- <div class="form-group">
           <label for="taxno">Country:</label>
           <input type="text" name="tax_no" placeholder="Enter Tax No" class="form-control" required>
       </div> -->
   
       <div class="form-group">
        <label for="country">Country:</label>
        <select name="country" class="form-control">
            <option value="">Select Country</option>
            @foreach($countries as $country)
                <option value="{{ $country->name }}">{{ $country->name }}</option>
            @endforeach
        </select>
    </div>
      
       <div class="form-group">
           <label for="mobile_no">Mobile No:</label>
           <input type="text" name="mobile_no" placeholder="Enter Mobile No" class="form-control" required>
       </div>
       <div class="form-group">
           <label for="email">Email:</label>
           <input type="email" name="email" placeholder="Enter Email" class="form-control" required>
       </div>
       <button type="submit" class="btn btn-success">Create</button>
   </form>
</div>
<a href="{{ route('suppliers.index') }}">Back to All Posts</a>



@endsection