<!-- resources/views/posts/create.blade.php -->
<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Post</title>
</head>
<body>
    <h2>Create Post</h2>
    <form action="{{ route('suppliers.store') }}" method="POST">
        @csrf
       
        <div>
            <label for="content">Supplier Name:</label>
            <input type="text" name="supplier_name" placeholder="Enter  Name">
        </div>
        <div>
            <label for="content">Address:</label>
            <textarea name="address" id=""  placeholder="Enter  Address"></textarea>
            
        </div>
        <div>
            <label for="country">Country:</label>
            <input type="text" name="country" placeholder="Enter Country">
        </div>
        <div>
            <label for="content">Mobile No:</label>
            <input type="text" name="mobile_no" placeholder="Enter Mobile No">
        </div>
        <div>
            <label for="content">Email:</label>
            <input type="text" name="email" placeholder="Enter Email">
        </div>
       
        <button type="submit">Create</button>
    </form>
    <a href="{{ route('suppliers.index') }}">Back to All Posts</a>
</body>
</html> -->

@extends('pro-admin.index')
@section('content')
<div class="container">
  <h2>View Items</h2>
 
    <div class="form-group">
    <label for="content">Item Name:</label>
    {{$item->item_name}}
    <!-- <input type="text" name="item_name" placeholder="Enter  Name" class="form-control" value="{{$item->item_name}}"> -->
    </div>
    <div class="form-group">
       <label for="content">Inventory Location:</label>
       {{$item->inventory_location}}
      <!-- <textarea name="address" id=""  placeholder="Enter  Address" class="form-control"></textarea> -->
    </div>
    <div class="form-group">
    <label for="brand">Brand</label>
    {{$item->brand}}
    <!-- <input type="text" name="brand" placeholder="Enter Brand" class="form-control" value="{{$item->item_name}}"> -->
    </div>
    <div class="form-group">
    <label for="Category">Category:</label>
    {{$item->category}}
    <!-- <input type="text" name="category" placeholder="Enter Category" class="form-control" value="{{$item->item_name}}"> -->
    </div>
    <div class="form-group">
    <label for="supplier">Supplier:</label>
    {{$item->supplier_id}}
    <!-- <select name="supplier" class="form-control">
        <option value="{{$item->supplier_id}}">{{$item->supplier_id}}</option>
        @foreach($supplier as $supply)
        <option value="{{$supply->supplier_name}}">{{$supply->supplier_name}}</option>
        @endforeach
      
    </select> -->
</div>
    <div class="form-group">
    <label for="stockunit">Stock Unit:</label>
    {{$item->stock_unit}}
    <!-- <input type="text" name="stock_unit" placeholder="Enter Stock Unit" class="form-control" value="{{$item->stock_unit}}"> -->
    </div>
    <div class="form-group">
    <label for="unitprice">Unit Price:</label>
    {{$item->unit_price}}
    <!-- <input type="text" name="unit_price" placeholder="Enter Unit Price" class="form-control" value="{{$item->stock_unit}}"> -->
    </div>
    <!-- <div style="position: relative;top: 20px; left: 10px;">
                            <a class="btn btn-info btn-circle btn-md mb-3 border-0" id="addmoregallery"
                                href="javascript:void(0)" style="background-color: #c00202">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                            </a>
                        </div> -->
    
     <div id="gallery_outer">
    <div class="form-group">
    <label for="image">Image:</label>
    @foreach($itemimage as $img)
    <img src="{{ asset('storage/' . $img->image) }}" alt="Image" width="100px;"height="100px;">
    <!-- <input type="file" name="image[]" placeholder="Enter Image" class="form-control">
    <input type="hidden" name="old_image_id[]" placeholder="Enter Image" value="{{$img->id}}" > -->
    @endforeach
    </div>
    
    </div>
    

  
</div>
<a href="{{ route('items.index') }}">Back to All Posts</a>



@endsection
</body>
</html>
