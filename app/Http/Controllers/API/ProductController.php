<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProductCollection;
use App\Model\Product;
use Ramsey\Uuid\Uuid;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
//    original code that didn't search the database 
    // public function index(Request $request)
    // {
    //     return new ProductCollection(Product::where('name', 'LIKE', "%$request->search%")->where('code', 'LIKE', "%$request->search%")->orderBy('id','desc')->paginate(10));
    // }

    // revised one that works by searching only the name
    public function index(Request $request)
    {
        return new ProductCollection(Product::where('name', 'LIKE', "%$request->search%")->orderBy('id','desc')->paginate(10));
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
        $request->validate([
            'name' => 'required',
            'code' => 'required|unique:products',
            'stock' => 'required',
            'category' => 'required|exists:categories,id',
            'description' => 'required',
            'price' => 'required|integer',
            'photo.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'buy_price' => 'required|integer',
            'restock_bal'=>'required',
        ]);

        // dd($photo->getClientOriginalName());
        $photo = $request->file('photo');
        $image_name = $photo->getClientOriginalName();
        $photo->move('images/products', $photo->getClientOriginalName());



        $product = new Product;
        $product->uuid = Uuid::uuid4();
        $product->name = $request->name;
        $product->buy_price = $request->buy_price;  //added with respect to the clients request
        $product->code = $request->code;
        $product->stock = $request->stock;
        $product->restock_bal = $request->restock_bal;
        $product->description = $request->description;
        $product->category_id = $request->category;
        $product->slug = Str::slug($request->name,'-');
        $product->price = $request->price;
        $product->ppn = $request->ppn;
        $product->stock = $request->stock;
        $product->image_name = $image_name;
        $product->save();
        // dd($product);
        return response()->json(['status'=>true]);

    }

    public function search(Request $r) {
        $search = $r->get('search');

        $products = Product::with('discount')->where('name','LIKE',"%$search%")->orWhere('code','LIKE',"%$search%")->orderBy('name','ASC')->limit(5)->get();

        return response()->json($products);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return Product::findOrFail($id);
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
            'name' => 'required|string',
            'description' => 'required|string',
            'code' => 'required|string',
            'category' => 'required|exists:categories,id',
            'price' => 'required|numeric',
            'buy_price' => 'required|numeric',
            'stock' => 'required|numeric',
            'restock_bal' => 'required|numeric',
            'ppn' => 'required|numeric',
            // 'photo' => 'nullable|image'
        ]);



        $update = Product::find($id);
        $update->name = $request->name;
        $update->description = $request->description;
        $update->code = $request->code;
        $update->price = $request->price;
        $update->buy_price = $request->buy_price;
        $update->stock = $request->stock;
        $update->restock_bal = $request->restock_bal;
        $update->category_id = $request->category;
        $update->ppn = $request->ppn;
        if($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $image_name = $photo->getClientOriginalName();
            $photo->move(public_path('images/products'), $image_name);
            $update->image_name = $image_name;
        }

        $update->save();

        
        return response()->json(['status' => true]);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();

        return response()->json(['status' => true]);
    }
}
