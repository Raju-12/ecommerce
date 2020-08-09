<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();

class SuperAdminController extends Controller
{
    
    public function index()
    {
    	$this->AdminAuthCheck();
    	return view('admin.dashboard');
    }
    public function logout()
    {
    	Session::flush();
    	return Redirect::to('/admin');
    }
    public function AdminAuthCheck()
    {
    	$admin_name=Session::get('admin_name');
    	if($admin_name){
    		return;
    	}
    	else{
    		return Redirect::to('/admin')->send();
    	}
    }
}
