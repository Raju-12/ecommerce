@extends('layout')
@section('content')

	<section id="cart_items">
		<div class="container col-sm-12">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
			<?php 
				$contents=Cart::getContent();
				// echo "<pre>";
				// print_r($contents);
				// echo "</pre>";
			 ?>
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Image</td>
							<td class="description">Name</td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td>Action</td>
						</tr>
					</thead>
					
					<tbody>
					<?php foreach ($contents as $v_contents) {?>
						<tr>
							<td class="cart_product">
								<a href=""><img src="{{URL::to($v_contents->associatedModel)}}"  height=79px" width="79px" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">{{$v_contents->name}}</a></h4>
								
							</td>
							<td class="cart_price">
								<p>{{$v_contents->price}}</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
								<form action="{{url('/update-cart')}}" method="post">
									@csrf
									<input class="cart_quantity_input" type="text" name="quantity" value="{{$v_contents->quantity}}" autocomplete="off" size="2">
									<input  type="hidden" name="id" value="{{$v_contents->id}}">
									<input class="btn btn-sm btn-default"  type="submit" name="submit" value="update">

								</form>
									
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">{{$v_contents->getPriceSum()}}</p>
							</td>
							<td class="cart_delete">

								<a class="cart_quantity_delete" href="{{URL::to('/delete-to-cart/'.$v_contents->id)}}"><i class="fa fa-times"></i></a>
							</td>
						</tr>
						<?php }?>
						
						
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>What would you like to do next?</h3>
				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
			</div>
			<div class="row">
				<!-- <div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Use Coupon Code</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Use Gift Voucher</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Estimate Shipping & Taxes</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>Country:</label>
								<select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / State:</label>
								<select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Get Quotes</a>
						<a class="btn btn-default check_out" href="">Continue</a>
					</div>
				</div>
 -->				<div class="col-sm-8">
					<div class="total_area">
						<ul>
							<li>Cart Sub Total <span>{{Cart::getSubTotal()}}</span></li>
							<li>Eco Tax <span>0.00</span></li>
							<li>Shipping Cost <span>Free</span></li>
							<li>Total <span>{{Cart::getTotal()}}</span></li>
						</ul>
							<a class="btn btn-default update" href="">Update</a>
							<a class="btn btn-default check_out" href="{{URL::to('/login-check')}}">Check Out</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->

@endsection