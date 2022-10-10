<?php include('sesheader.php'); ?>
<div class="p-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="#">Analytics</a></li>
		</ol>
	</nav>					
	<div class="white-box p-3">
		<h5>Analytics</h5>
		<div class="row">							
			<div class="col-12 col-md-3">
				<div class="form-group">
					<label>Semester <span class="required">*<span></label>
					<select class="form-control">
						<option>16FA</option>
						<option>16SP</option>
						<option>17FA</option>
						<option>17SP</option>
						<option>18FA</option>
						<option>18SP</option>
						<option>19FA</option>
						<option>19SP</option>
						<option>20FA</option>
						<option>20SP</option>
						<option>21FA</option>
						<option>21SP</option>
						<option>22FA</option>
					</select>
				</div>
			</div>
			<div class="col-12 col-md-3">
				<div class="form-group">
					<label>Semester <span class="required">*<span></label>
					<select class="form-control">
						<option>16FA</option>
						<option>16SP</option>
						<option>17FA</option>
						<option>17SP</option>
						<option>18FA</option>
						<option>18SP</option>
						<option>19FA</option>
						<option>19SP</option>
						<option>20FA</option>
						<option>20SP</option>
						<option>21FA</option>
						<option>21SP</option>
						<option>22FA</option>
					</select>
				</div>
			</div>
			<div class="col-12 col-md-3">
				<div class="form-group mb-3">
					<label>Question <span class="required">*<span></label>
					<select class="form-control">
						<option>Internet Facing</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			</div>
			<div class="col-12 col-md-3 mt-4">	
				<button type="button" class="btn btn-primary">Submit</button>
				<button type="button" class="btn btn-secondary" onclick="closeNav()">Reset</button>
			</div>
		</div>
		<h5 class="mt-4">Report</h5>
		<div class="row">	
		</div>
	</div>
</div>
<?php include('sesfooter.php'); ?>