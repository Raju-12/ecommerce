@extends('admin_layout')
@section('admin-content')

<ul class="breadcrumb">
	<li>
		<i class="icon-home"></i>
		<a href="index.html">Home</a>
		<i class="icon-angle-right"></i> 
	</li>
	<li>
		<i class="icon-edit"></i>
		<a href="#">Edit Category </a>
	</li>
</ul>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon edit"></i><span class="break"></span>Update Category</h2>
			
		</div>
		<p class="alert-success">
			<?php 
				$message=Session::get('message');
				if($message)
				{
					echo $message;
					Session::put('message',null);
					
				}
			 ?>
		</p>
	<div class="box-content" >
		<form class="form-horizontal" action="{{url('/update-category',$category_info->category_id)}}" method="post">
		@csrf
		  <fieldset>
			
			<div class="control-group">
			  <label class="control-label" for="category_name" ">Category Name</label>
			  <div class="controls">
				<input type="text" class="input-xlarge" name="category_name" value="{{$category_info->category_name}}">
			  </div>
			</div>        
			<div class="control-group hidden-phone">
			  <label class="control-label" for="category_description">Category Description</label>
			  <div class="controls">
				<textarea class="cleditor" name="category_description" rows="3"> 
				 {{$category_info->category_description}}
				</textarea>
			  </div>
			</div>
			
			<div class="form-actions">
			  <button type="submit" class="btn btn-primary">Update Category</button>
			  
			</div>
		  </fieldset>
		</form>   

		</div>
	</div><!--/span-->

</div><!--/row-->
</div>

@endsection