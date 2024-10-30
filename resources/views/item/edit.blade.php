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
  <h2>Update Items</h2>
 <form action="{{ route('items.update',$item->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
    <label for="content">Item Name:</label>
    <input type="text" name="item_name" placeholder="Enter  Name" class="form-control" value="{{$item->item_name}}">
    </div>
    <div class="form-group">
       <label for="content">Inventory Location:</label>
       <input type="text" name="inventory_location" placeholder="Inventory Location" class="form-control" value="{{$item->item_name}}">
      <!-- <textarea name="address" id=""  placeholder="Enter  Address" class="form-control"></textarea> -->
    </div>
    <div class="form-group">
    <label for="brand">Brand</label>
    <input type="text" name="brand" placeholder="Enter Brand" class="form-control" value="{{$item->item_name}}">
    </div>
    <div class="form-group">
    <label for="Category">Category:</label>
    <input type="text" name="category" placeholder="Enter Category" class="form-control" value="{{$item->item_name}}">
    </div>
    <div class="form-group">
    <label for="supplier">Supplier:</label>
    <select name="supplier" class="form-control">
        <option value="{{$item->supplier_id}}">{{$item->supplier_id}}</option>
        @foreach($supplier as $supply)
        <option value="{{$supply->supplier_name}}">{{$supply->supplier_name}}</option>
        @endforeach
        <!-- Add more options as needed -->
    </select>
</div>
    <div class="form-group">
    <label for="stockunit">Stock Unit:</label>
    <input type="text" name="stock_unit" placeholder="Enter Stock Unit" class="form-control" value="{{$item->stock_unit}}">
    </div>
    <div class="form-group">
    <label for="unitprice">Unit Price:</label>
    <input type="text" name="unit_price" placeholder="Enter Unit Price" class="form-control" value="{{$item->unit_price}}">
    </div>
    <div style="position: relative;top: 20px; left: 10px;">
                            <a class="btn btn-info btn-circle btn-md mb-3 border-0" id="addmoregallery"
                                href="javascript:void(0)" style="background-color: #c00202">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                            </a>
                        </div>
    
     <div id="gallery_outer">
    <div class="form-group">
    <label for="image">Image:</label>
    @foreach($itemimage as $img)
    <img src="{{ asset('storage/' . $img->image) }}" alt="Image" width="100px;"height="100px;">
    <input type="file" name="image[]" placeholder="Enter Image" class="form-control">
    <input type="hidden" name="old_image_id[]" placeholder="Enter Image" value="{{$img->id}}" >
    @endforeach
    </div>
    
    </div>
    <button type="submit" class="btn btn-success">Update</button>

  </form>
</div>
<a href="{{ route('items.index') }}">Back to All Posts</a>


<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script>
                $(document).on('click', '#addmoregallery', function(e) {
                    var html = '';
                    html += '<div class="gallery_outer">';

                
               
                    html += '<div class="col-xs-12 col-sm-12 col-md-12">';
                    html += '<div class="form-group">';
                    html += '<strong>Image</strong>';
                    html += '<input type="file" name="image[]" placeholder="Enter Image" class="form-control">';
                   
                    html += '<div class="col-xs-2 col-sm-2 col-md-2">';
                    html += '<a class="btn btn-danger btn-circle btn-md removemoregallery" href="javascript:void(0)"><i class="far fa-times-circle"></i></a>';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                   

                    
                    html += '</div>';

                    $("#gallery_outer").append(html);
                });

                $(document).on('click', '.removemoregallery', function(e) {
                    $(this).closest('div.gallery_outer').remove();
                });
            </script>
@endsection
</body>
</html>
