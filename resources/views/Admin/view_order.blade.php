@extends('admin_layout')
@section('admin-content')
	
	<div class="row-fluid sortable">		
		<div class="box span6">
			<div class="box-header" >
				<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Customer Details </h2>
				
			</div>
			<div class="box-content">
				<table class="table table-striped">
				  <thead>
					  <tr>
						  
						  <th>Customer Name</th>
						  <th>Mobile</th>
						  
					  </tr>
				  </thead>   
				  <tbody>
				  	<tr>
				  		<!-- @foreach($order_by_id as $v_order)
				  		@endforeach -->
				  		<td>{{$order_by_id->customer_name}}</td>
				  		<td>{{$order_by_id->mobile_no}}</td>
				  	</tr>
				  </tbody>
				 
			  </table>            
			</div>
		</div>
		<div class="box span6">
			<div class="box-header" >
				<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Customer Details </h2>
				
			</div>
			<div class="box-content">
				<table class="table table-striped">
				  <thead>
					  <tr>
						  
						  <th>Customer Name</th>
						  <th>Address</th>
						  <th>Mobile</th>
						  <th>Email</th>
						  
					  </tr>
				  </thead>   
				  <tbody>
				  	<tr>
				  		<!-- @foreach($order_by_id as $v_order)
				  		@endforeach -->
				  		<td>{{$order_by_id->shipping_fname}}</td>
				  		<td>{{$order_by_id->shipping_address}}</td>
				  		<td>{{$order_by_id->shipping_mobile_number}}</td>
				  		<td>{{$order_by_id->shipping_email}}</td>
				  	</tr>
				  </tbody>				 
			  </table>            
			</div>
		</div>
	
	</div>


	<div class="row-fluid sortable">		
		<div class="box span12">
			<div class="box-header" >
				<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Order Details </h2>
				
			</div>
			<div class="box-content">
				<table class="table table-striped">
				  <thead>
					  <tr>
						  
						  <th>Id</th>
						  <th>Product Name</th>
						  <th>Product Price</th>
						  <th>Product Sales Quantity</th>
						  <th>Product Sub Total</th>
						  
					  </tr>
				  </thead>   
				  <tbody>
				  <!-- @foreach($order_by_id as $v_order) -->
				  	<tr>
				  		<td>{{$order_by_id->order_id}}</td>
				  		<td>{{$order_by_id->product_name}}</td>
				  		<td>{{$order_by_id->product_price}}</td>
				  		
				  	</tr>
				  	<!-- @endforeach -->
				  </tbody>
				
			  </table>            
			</div>
		</div>
	
	</div>

@endsection
