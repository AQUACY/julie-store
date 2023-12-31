<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryCollection;
use App\Model\Category;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // pagination changed from 10 to 20 to view all the categories
    public function index(Request $r)
    {
        return new CategoryCollection(Category::where('name','LIKE',"%".$r->get('search')."%")->orderBy('id','desc')->paginate(20));
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
            'description' => 'required',
            'photo' => 'required',
        ]);
        $name =  $request->name;
        $slug = Str::slug($name,'-');
        $description = $request->description;
        $image = $request->file('photo');

        // return $request->all();

        $imageName = $image->getClientOriginalName();
        $image->move(public_path('/images/categories'), $imageName);

        $insert = Category::create([
            'name' => $name,
            'description' => $description,
            'slug' => $slug,
            'image_name' => $imageName
        ]);

        return $insert;
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
        return Category::findOrFail($id);
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
        $name = $request->name;
        $description = $request->description;
        $slug =Str::slug($name);


        if($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $image_name = $photo->getClientOriginalName();
            $photo->move(public_path('/images/categories'), $image_name);
    
            Category::find($id)->update([
                'name' => $name,
                'description' => $description,
                'slug' => $slug,
                'image_name' => $image_name
            ]);
        }else{
            Category::find($id)->update([
                'name' => $name,
                'description' => $description,
                'slug' => $slug,
            ]);

        }

        return response(['success'=>true], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cat = Category::find($id);
        $cat->delete();

        return [
            'status' => 'true',
            'msg' => 'Category '.$cat->name.' Deleted Successfully'
        ];
    }
}
