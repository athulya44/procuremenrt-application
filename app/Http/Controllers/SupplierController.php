<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Supplier;
use App\Models\Country;

class SupplierController extends Controller
{
    public function index()
    {
        $suppliers = supplier::all();
        $countries =Country::all();
        return view('suppliers.index', compact('suppliers','countries'));
    }

    public function create()
    { $countries =Country::all();
        return view('suppliers.create',compact('countries'));
    }

    public function store(Request $request)
    {
        // $request->validate([
        //     'name' => 'required|string|max:255',
        //     'description' => 'nullable|string',
        // ]);

        Supplier::create([
            'supplier_no' => $request->supplier_no,

            'supplier_name' => $request->supplier_name,
            'address' => $request->address,
            'country' => $request->country,
            'mobile_no' => $request->mobile_no,
            'email' => $request->email,
            'tax_no' => $request->tax_no,
         
        
        
        
            ]
         
        //     'description' => 'nullable|string',  


        );
        return redirect()->route('suppliers.index')->with('success', 'supplier created successfully.');
    }

    public function show(Supplier $supplier)
    {
        return view('suppliers.show', compact('supplier'));
    }

    public function edit(Supplier $supplier)
    {
    $countries =Country::all();

        return view('suppliers.edit', compact('supplier','countries'));
    }

    public function update(Request $request, $id)
    {
        $supplier = Supplier::findorfail($id);

        $supplier->supplier_name=$request->supplier_name;

        $supplier->address=$request->address;
        $supplier->country=$request->country;
        $supplier->mobile_no=$request->mobile_no;
        $supplier->tax_no=$request->tax_no;
        $supplier->email=$request->email;
      
        // $request->validate([
        //     'name' => 'required|string|max:255',
        //     'description' => 'nullable|string',
        // ]);

        // $supplier->update($request->all());
        $supplier->save();
        return redirect()->route('suppliers.index')->with('success', 'Supplier updated successfully.');
    }

    public function destroy(Supplier $supplier)
    {
       $supplier->delete();
        return redirect()->route('suppliers.index')->with('success', 'Supplier deleted successfully.');
    }
    public function updatestatus(Request $request, $id){
        $supplier = Supplier::findorfail($id);
        $supplier->status=$request->status;
        $supplier->save();
        return redirect()->route('suppliers.index')->with('success', 'Status updated successfully.');
    }
}
