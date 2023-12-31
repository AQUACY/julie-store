<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Http\Resources\CustomerCollection;
use Validator;


class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $r)
    {
        return new CustomerCollection(Customer::where('name','LIKE',"%$r->search%")->orderBy('id','DESC')->paginate(10));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        app()->setLocale('en');
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'alamat' => 'required',
            'phone' => 'required',
            'provinsi' => 'required',
            'kota' => 'required',
            'email' => 'required|email',
            'photo' => 'nullable',
            'role' => 'required',
        ]);

        $customer = new Customer;
        $customer->name = $request->name;
        $customer->alamat = $request->alamat;
        $customer->role = $request->role;
        $customer->phone = $request->phone;
        $customer->kota = $request->kota;
        $customer->provinsi = $request->provinsi;
        $customer->email = $request->email;
        if($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $image_name = $photo->getClientOriginalName();
            $photo->move(public_path('/images/customers'), $image_name);
            $customer->image_name = $image_name;
        }

        $customer->save();

        return response()->json(['status' => true]);
    }

    public function all() {
        return new CustomerCollection(Customer::orderBy('name','asc')->get());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $customer = Customer::findOrFail($id);
        // return $user;
        return $customer;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $customer = Customer::findOrFail($id);
        return $customer;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        app()->setLocale('en');
        $request->validate([
            'name' => 'required',
            'alamat' => 'required',
            'phone' => 'required',
            'provinsi' => 'required',
            'kota' => 'required',
            'email' => 'required|email',
            'photo' => 'nullable'
            // 'photo' => 'nullable|image'
        ]);
        $update = Customer::find($id);
        $update->name = $request->name;
        $update->alamat = $request->alamat;
        $update->phone = $request->phone;
        $update->provinsi = $request->provinsi;
        $update->kota = $request->kota;
        $update->email = $request->email;
        if($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $image_name = $photo->getClientOriginalName();
            $photo->move(public_path('images/customers'), $image_name);
            $update->image_name = $image_name;
        }

        $update->save();
        return response()->json(['status'=>'success']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $customer = Customer::find($id);
        $customer->delete();

        return response()->json(['status' => true]);
    }
}
