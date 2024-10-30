
@extends('pro-admin.index')
@section('content')
<div class="container">
<h2 class="mb-4">All Suppliers</h2>
    <a href="{{ route('suppliers.create') }}" class="btn btn-primary mb-3">Create New Supplier</a>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Supplier No</th>
                <th>Supplier Name</th>
                <th>Address</th>
                <th>Tax No</th>
                <th>Country</th>
                <th>Mobile No</th>
                <!-- <th>Email</th> -->
                <th>Status</th>
               
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($suppliers as $post)
                <tr>
                
                    <td>{{ $post->supplier_no }}</td>
                    <td>{{ $post->supplier_name }}</td>
                    <td>{{ $post->address }}</td>
                    <td>{{ $post->tax_no }}</td>
                    <td>{{ $post->country }}</td>
                    <td>{{ $post->mobile_no }}</td>
                    <!-- <td>{{ $post->email }}</td> -->
                    <td>
<form action="{{route('suppliers.updatestatus',$post->id)}}" method="POST">
    @csrf
<select name="status" class="form-control">
            <option value="">{{$post->status}}</option>
            
                <option value="active">Active</option>
                <option value="inactive">Inactive</option>
                <option value="blocked">Blocked</option>
            
        </select>
        <button type="submit" class="btn btn-info btn-sm"> Update</button>
</form>
                   
                    </td>
                    <td>
                        <a href="{{ route('suppliers.show', $post->id) }}" class="btn btn-info btn-sm">View</a>
                        <a href="{{ route('suppliers.edit', $post->id) }}" class="btn btn-warning btn-sm">Edit</a>
                        <form action="{{ route('suppliers.destroy', $post->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</div>
    
    @endsection

