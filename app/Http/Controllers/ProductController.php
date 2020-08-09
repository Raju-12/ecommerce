<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DB;
use Session;  
use Illuminate\Support\Facades\Redirect;
session_start();

class ProductController extends Controller
{
    public function index()
    {
    	return view('admin.add_product');
    }
    public function save_product(Request $request)
    {
    	$data=array();
    	$data['product_name']=$request->product_name;
    	$data['category_id']=$request->category_id;
    	$data['manufacture_id']=$request->manufacture_id;
    	$data['product_short_description']=$request->product_short_description;
    	$data['product_long_description']=$request->product_long_description;
    	$data['product_size']=$request->product_size;
    	$data['product_price']=$request->product_price;
    	$data['product_color']=$request->product_color;
    	$data['publication_status']=$request->publication_status;

    	$image=$request->file('product_image');
    	if($image){

    		$image_name=str::random(20);
    		$ext=strtolower($image->getClientOriginalExtension());
    		$image_full_name=$image_name.'.'.$ext;
    		$upload_path='image/';
    		$image_url=$upload_path.$image_full_name;
    		$success=$image->move($upload_path,$image_full_name);

    		if($success){
    			$data['product_image']=$image_url;
    			DB::table('tbl_product')->insert($data);
    			Session::put('message','Product Inserted Successfully !!');
    			return Redirect::to('add-product');
    		}

    	}
    	$data['product_image']='';
    			DB::table('tbl_product')->insert($data);
    			Session::put('message','Product Inserted Without Image Successfully !!');
    			return Redirect::to('add-product');


    }
    public function all_product()
    {
    	$all_product_info=DB::table('tbl_product')
    					// ->join('tbl_category','tbl_product.category_id','=','tbl_category.category_id')
    					// >join('tbl_manufacture','tbl_product.manufacture_id','=','tbl_manufacture.manufacture_id')
    					->get();

    	$manage_product=view('admin.all_product')
    		->with('all_product_info',$all_product_info);

    	return view('admin_layout')
    		->with('admin.all_product',$manage_product);
    }
    public function unactive_product($product_id)
    {
    	DB::table('tbl_product')
    		->where('product_id',$product_id)
    		->update(['publication_status' => 0]);
    		Session::put('message','Product Unactive Successfully !!');
    	return Redirect::to('/all-product');
    }
    public function active_product($product_id)
    {
    	DB::table('tbl_product')
    		->where('product_id',$product_id)
    		->update(['publication_status' => 1]);
    		Session::put('message','Product active Successfully !!');
    	return Redirect::to('/all-product');
    }
    public function delete_product($product_id)
    {
    	DB::table('tbl_product')
            ->where('product_id',$product_id)
            ->delete();

           //
            Session::get('message','Product Updated Successfully !!');
           return Redirect::to('/all-product');
    }
    public function edit_product($product_id)
    {
    	$product_info=DB::table('tbl_product')
    		->where('product_id',$product_id)
    		->first();
    		
    	$product_info=view('admin.edit_product')
    		->with('product_info',$product_info);

    	return view('admin_layout')
    		->with('admin.edit_product',$product_info);
    }
    public function update_product(Request $request,$product_id)
    {
    	$data=array();
        $data['product_name']=$request->product_name;
    	$data['category_id']=$request->category_id;
    	$data['manufacture_id']=$request->manufacture_id;
    	$data['product_short_description']=$request->product_short_description;
    	$data['product_long_description']=$request->product_long_description;
    	$data['product_size']=$request->product_size;
    	$data['product_price']=$request->product_price;
    	$data['product_color']=$request->product_color;
    	$data['publication_status']=$request->publication_status;

    	//********

    	$image=$request->file('product_image');
    	if($image){

    		$image_name=str::random(20);
    		$ext=strtolower($image->getClientOriginalExtension());
    		$image_full_name=$image_name.'.'.$ext;
    		$upload_path='image/';
    		$image_url=$upload_path.$image_full_name;
    		$success=$image->move($upload_path,$image_full_name);

    		if($success){
    			$data['product_image']=$image_url;
    			DB::table('tbl_product')->insert($data);
    			Session::put('message','Product Inserted Successfully !!');
    			//return Redirect::to('add-product');
    		}

    	}
    	$data['product_image']='';
    			DB::table('tbl_product')->insert($data);
    			Session::put('message','Product Inserted Without Image Successfully !!');
    			//return Redirect::to('add-product');

    	//*****

        DB::table('tbl_product')
            ->where('product_id',$product_id)
            ->update($data);

           Session::get('message','Category Updated Successfully !!');
           return Redirect::to('/all-product');
    }
}
