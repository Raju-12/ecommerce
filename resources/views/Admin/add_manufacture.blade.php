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
		<a href="#">Add Manufacture </a>
	</li>
</ul>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon edit"></i><span class="break"></span>Add Manufacture</h2>
			
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
		<form class="form-horizontal" action="{{ url('/save-manufacture')}}" method="post">
			@csrf
			  <fieldset>
				
				<div class="control-group">
				  <label class="control-label" for="category_name">Manufacture Name</label>
				  <div class="controls">
					<input type="text" class="input-xlarge" name="manufacture_name">
				  </div>
				</div>        
				<div class="control-group hidden-phone">
				  <label class="control-label" for="manufacture_description">Manufacture Description</label>
				  <div class="controls">
					<textarea class="cleditor" name="manufacture_description" rows="3"></textarea>
				  </div>
				</div>
				<div class="control-group hidden-phone">
				  <label class="control-label" for="publication_status">Publication Status</label>
				  <div class="controls">
					<input type="checkbox" name="publication_status" value="1">
				  </div>
				</div>
				<div class="form-actions">
				  <button type="submit" class="btn btn-primary">Add Manufacture</button>
				  <button type="reset" class="btn">Cancel</button>
				</div>
			  </fieldset>
			</form>   

		</div>
	</div><!--/span-->

</div><!--/row-->
</div>

@endsection