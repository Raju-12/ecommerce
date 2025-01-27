<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Cart;
use Illuminate\Support\Facades\Redirect;
use Session;


class CartController extends Controller
{
    public function add_to_cart(Request $request)
    {
    	$quantity=$request->quantity;
    	$product_id=$request->product_id;
    	$product_info=DB::table('tbl_product')
    			->where('product_id',$product_id)
    			->first();

    			$data['quantity']=$quantity;
    			$data['id']=$product_info->product_id;
    			$data['name']=$product_info->product_name;
    			$data['price']=$product_info->product_price;
    			$data['associatedModel']=$product_info->product_image;

    			Cart::add($data);
    			return Redirect::to('/show-cart');
    }

    public function show_cart()
    {
    	$all_published_category=DB::table('tbl_category')
    					->where('publication_status',1)
    					->get();
    	$manage_published_category=view('pages.add_to_cart')
    		->with('all_published_category',$all_published_category);
    		return view('layout')
    		->with('pages.add_to_cart',$manage_published_category);
    }

    public function delete_to_cart($id)
     {
    // 	echo "fjldg";
    // 	$userId = auth()->user()->id;
    	//echo $id;
    	 Cart::remove($id);
    	 return Redirect::to('/show-cart');

    }
    public function update_cart(Request $request)
    {
    	$quantity=$request->quantity;
    	$id=$request->id;
    	
    	Cart::update($id,$quantity);
    	return Redirect::to('/show-cart');

    }
}
