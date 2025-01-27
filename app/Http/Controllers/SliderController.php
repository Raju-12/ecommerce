<?php

namespace App\Http\Controllers;

use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
session_start();

class SliderController extends Controller
{
     public function index()
    {
    	return view('admin.add_slider');
    }
    public function save_slider(Request $request)
    {
    	$data=array();
    	$data['publication_status']=$request->publication_status;

    	$image=$request->file('slider_image');
    	if($image){

    		$image_name=str::random(20);
    		$ext=strtolower($image->getClientOriginalExtension());
    		$image_full_name=$image_name.'.'.$ext;
    		$upload_path='slider/';
    		$image_url=$upload_path.$image_full_name;
    		$success=$image->move($upload_path,$image_full_name);

    		if($success){
    			$data['slider_image']=$image_url;
    			DB::table('tbl_slider')->insert($data);
    			Session::put('message','Slider Inserted Successfully !!');
    			return Redirect::to('add-slider');
    		}

    	}
    	$data['slider_image']='';
    			DB::table('tbl_slider')->insert($data);
    			Session::put('message','Slider Inserted Without Image Successfully !!');
    			return Redirect::to('add-slider');
    }
    public function all_slider()
    {
    	$all_slider_info=DB::table('tbl_slider')
    					// ->join('tbl_category','tbl_product.category_id','=','tbl_category.category_id')
    					// >join('tbl_manufacture','tbl_product.manufacture_id','=','tbl_manufacture.manufacture_id')
    					->get();

    	$manage_slider=view('admin.all_slider')
    		->with('all_slider_info',$all_slider_info);

    	return view('admin_layout')
    		->with('admin.all_slider',$manage_slider);
    }

    public function unactive_slider($slider_id)
    {
    	DB::table('tbl_slider')
    		->where('slider_id',$slider_id)
    		->update(['publication_status' => 0]);
    		Session::put('message','Slider Unactive Successfully !!');
    	return Redirect::to('/all-slider');
    }

    public function active_slider($slider_id)
    {
    	DB::table('tbl_slider')
    		->where('slider_id',$slider_id)
    		->update(['publication_status' => 1]);
    		Session::put('message','Slider active Successfully !!');
    	return Redirect::to('/all-slider');
    }
     public function delete_slider($slider_id)
    {
        DB::table('tbl_slider')
            ->where('slider_id',$slider_id)
            ->delete();

           //
            Session::get('message','Slider Updated Successfully !!');
           return Redirect::to('/all-slider');

    }
}
