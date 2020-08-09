<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;

class AdminController extends Controller

{
    public function index()
    {
    	return view('admin_login');
    }


    public function dashboard(Request $request)
    {
    	$adm_email=$request->admin_email;
    	$adm_password=md5($request->admin_password);
    	$result=DB::table('tbl_admin')
    			->where('admin_email',$adm_email)
    			->where('admin_password',$adm_password)
    			->first();

    		if($result){
    			 Session::put('admin_name',$result->admin_name);
    			 Session::put('admin-id',$request->admin_id);
    			return Redirect::to('/dashboard');
    		}
    		else{
    			Session::put('message','Email or Password are not match');
    			return Redirect::to('/admin');
    		}	
    }

    
}
