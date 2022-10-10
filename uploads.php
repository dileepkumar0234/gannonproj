<?php include('sesheader.php'); ?>
<div class="p-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="#">Analytics</a></li>
		</ol>
	</nav>	
	<div class="white-box p-3">
		<div class="row mb-2">
			<form id="fileupload" name="fileupload" action="importdata.php" method="POST" enctype="multipart/form-data">
				<div class="col-12 col-md-12">
					<div class="form-group">
						<label>Upload Doc <span class="required">*<span></label> <input type="file" class="form-control-file" id="import_file" name="import_file">
						<span id="error_import_file" class="error_mesg"></span>
					</div>
				</div>
				<input type="hidden" id="save_excel_data" name="save_excel_data" value="1">
				<div class="col-12">								
					<button type="button" name="save_excel_data" onclick="fiileSubmit();" class="btn btn-primary">Submit</button>
					<button type="button" class="btn btn-secondary" >Cancel</button>
				</div>
			 </form>			  
		</div>
		<div class="clearfix"></div>
		<?php
			if(isset($_SESSION['message']) && $_SESSION['message']!=""){
				echo "<h5 class='success_mesg'>".$_SESSION['message']."</h5>";
				unset($_SESSION['message']);
			}
	   ?>
	</div>
</div>
<?php include('sesfooter.php'); ?>
<script>
	function fiileSubmit(){
		var import_file = $("#import_file").val();
		var flag=true;
		if(import_file==''){
			flag=false;
			$("#error_import_file").html('Import file is required');
		}
		if(flag==false){
			return false;
		}else{
			$("#error_import_file").html('');
			$('#fileupload').submit();
		}
	}
</script>