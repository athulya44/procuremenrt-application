
@extends('pro-admin.index')
@section('content')
<div class="container">
<h2 class="mb-4">All Items</h2>
    <a href="{{ route('items.create') }}" class="btn btn-primary mb-3">Create New Item</a>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Item No</th>
                <th>Item Name </th>
                <th>Inventory Location</th>
                <th>Brand</th>
                <th>Category</th>
                <th>Supplier</th>
                <th>Stock Unit</th>
                <th>Unit Price</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($items as $post)
                <tr>
                
                    <td>{{ $post->item_no }}</td>
                    <td>{{ $post->item_name }}</td>
                    <td>{{ $post->inventory_location }}</td>
                    <td>{{ $post->brand }}</td>
                    <td>{{ $post->category }}</td>
                    <td>{{ $post->supplier_id }}</td>
                    <td>{{ $post->stock_unit }}</td>
                    <td>{{ $post->unit_price }}</td>
                   
                    <td>
<form action="{{route('items.updatestatus',$post->id)}}" method="POST">
    @csrf
<select name="status" class="form-control">
            <option value="">{{ucfirst($post->status)}}</option>
            <option value="">Select</option>
                <option value="enabled">Enabled</option>
                <option value="disabled">Disabled</option>
                
            
        </select>
        <button type="submit" class="btn btn-info btn-sm"> Update</button>
</form>
                    </td>
                    <td>
                        <a href="{{ route('items.show', $post->id) }}" class="btn btn-info btn-sm">View</a>
                        <a href="{{ route('items.edit', $post->id) }}" class="btn btn-warning btn-sm">Edit</a>
                        <form action="{{ route('items.destroy', $post->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
    

    <!-- Bootstrap JS Bundle with Popper -->
   @endsection
