<?php include('sesheader.php'); 
	$userDetails = "";
	$updateStatusMesgSuccess = "";
	$updateStatusMesg = "";
	$dateTime = date('Y-m-d H:i:s');
	if(isset($_SESSION['ses_userid']) && $_SESSION['ses_userid']!=""){
		$ses_userid = $_SESSION['ses_userid'];
		if(isset($_REQUEST['fusername']) && $_REQUEST['fusername']!=""){
			$fusername = ucfirst($_POST['fusername']);
			$fdepartment = $_POST['fdepartment'];
			$updateprofile = "UPDATE faculties SET fusername='$fusername',fdepartment='$fdepartment',fupdatedat='$dateTime' WHERE fid='$ses_userid'";
			$rs = mysqli_query($con, $updateprofile);
			if(isset($rs) && $rs>0){
				$updateStatusMesg = "Profile has been updated successfully.";
				$updateStatusMesgSuccess = "success_mesg";				
			}else{
				$updateStatusMesg = "Profile is not updated.";
				$updateStatusMesgSuccess = "error_mesg";
			}
			$_POST = array();
			unset($_POST['fusername']);
			empty($_POST['fusername']);
		}		
		$facultySql = "SELECT * FROM faculties WHERE fid='$ses_userid' AND fstatus=1";
		$rs = mysqli_query($con, $facultySql);
		if(isset($rs->num_rows) && $rs->num_rows>0){
			$rev = mysqli_fetch_array($rs);
			$userDetails = $rev;
		}else{
			header('Location:signin.php');
		}
	}else{
		header('Location:signin.php');
	}
?>			
	<div class="p-3">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page"><a href="#">My Profile</a></li>
			</ol>
		</nav>					
		<div class="white-box p-3 profile">
			<div class="row">
				<div class="col-12 col-md-6">
					<h3>Edit Profile</h2>
					<form id="profileform" name="profileform" method="POST">
						<div class="form-group">
							<label>User Name <span class="required">*<span></label>
							<input type="text" name="fusername" id="fusername" class="form-control" placeholder="Gannon" value="<?php echo ucfirst($userDetails['fusername']); ?>">
							<span id="error_fusername" class="error_mesg_red">
						</div>
						<div class="form-group">
							<label>Email ID : </label>
							<span><?php echo $userDetails['femailid']; ?></span>
						</div>
						<div class="form-group">
							<label>Department <span class="required">*<span></label>
							<select class="form-control" id="fdepartment" name="fdepartment">
								<option value="">Select a Department</option>
								<?php 
									$d1 ='';$d2 ='';$d3 ='';$d4 ='';$d5 ='';$d6 ='';$d7 ='';
									if(isset($userDetails['fdepartment']) && $userDetails['fdepartment']!=""){
										$departname = $userDetails['fdepartment'];
										if($departname=='CIS'){
											$d1 ='selected';
										}else if($departname=='Cybersecurity'){
											$d2 ='selected';
										}else if($departname=='English'){
											$d3 ='selected';
										}else if($departname=='MBA'){
											$d4 ='selected';
										}else if($departname=='Mathematics'){
											$d5 ='selected';
										}else if($departname=='Physics'){
											$d6 ='selected';
										}else if($departname=='Arts'){
											$d7 ='selected';
										}
									}
								?>
								<option value="CIS" <?php echo $d1; ?>>CIS - Computer and information sciences</option>
								<option value="Cybersecurity" <?php echo $d2; ?>>CBYER - Cybersecurity</option>
								<option value="English" <?php echo $d3; ?>>ENG - English</option>
								<option value="MBA" <?php echo $d4; ?>>MBA - BA</option>
								<option value="Mathematics" <?php echo $d5; ?>>MATH - Mathematics</option>
								<option value="Physics" <?php echo $d6; ?>>PHY - Physics</option>
								<option value="Arts" <?php echo $d7; ?>>Arts</option>
							</select>
							<span id="error_fdepartment" class="error_mesg_red"></span>
						</div>
						<input type="hidden" name="updateSt" value="1">
						<div class="col-12 form-group">								
							<button type="button" class="btn btn-primary" onclick="profile_update_fun();">Save</button>
						</div>
						<span class="<?php echo $updateStatusMesgSuccess; ?> clear_message"><?php echo $updateStatusMesg; ?></span>
					</form>
				</div>
				<div class="col-12 col-md-6">
					<h3>Change Password</h3>
					<form id="changepwd" method="POST" action="passwordupdate.php">
						<div class="form-group">
							<label>Old Password <span class="required">*<span></label>
							<input type="paasword" class="form-control" placeholder="Old Password" name="oldpwd" id="oldpwd">
							<span id="error_oldpwd" class="error_mesg_red"></span>
						</div>
						<div class="form-group">
							<label>New Password <span class="required">*<span></label>
							<input type="password" class="form-control" name="currpwd" id="currpwd" placeholder="New Password">
							<span id="error_currpwd" class="error_mesg_red"></span>
						</div>
						<div class="form-group">
							<label>Confirm Password <span class="required">*<span></label>
							<input type="password" class="form-control" name="confirmpwd" id="confirmpwd" placeholder="Confirm Password">
							<span id="error_confirmpwd" class="error_mesg_red"></span>
						</div>
						<input type="hidden" id="updatepage" name="updatepage" value="changepasswordform">
						<div class="col-12 form-group">								
							<button type="button" class="btn btn-primary" onclick="chagepasswordfun()">Save</button>
							<button type="button" class="btn btn-secondary">Cancel</button>
						</div>
						<span class="<?php if(isset($_SESSION['errorlogmes']) && $_SESSION['errorlogmes']!="") { echo $_SESSION['errorlogmes']; unset($_SESSION['errorlogmes']); } ?> clear_message"><?php if(isset($_SESSION['errorlogmes']) && $_SESSION['errorlogmes']!="") { echo $_SESSION['passwordStatusMesg']; unset($_SESSION['passwordStatusMesg']); } ?></span>
					</form>
				</div>					
			</div>
		</div>
	</div>
	<?php include('sesfooter.php'); ?>
	<script>
		$( document ).ready(function() {			
			setTimeout('clear_messages()', 2000);  
		});
		function clear_messages(){
			$('.clear_message').html('');
		}
		function chagepasswordfun(){
			var oldpwd = $("#oldpwd").val();
			var curepwd = $("#currpwd").val();
			var confirmpwd = $("#confirmpwd").val();
			var flag = true;
			if(confirmpwd==''){
				flag = false;
				$("#error_confirmpwd").html('Confirm password is required.');
			}else{
				$("#error_confirmpwd").html('');
			}
			if(curepwd==''){
				flag = false;
				$("#error_currpwd").html('Newpassword password is required.');
			}else{
				$("#error_currpwd").html('');
			}
			if(confirmpwd!=curepwd){
				flag = false;
				$("#error_confirmpwd").html('Entered new password and confirm password is match.');
			}
			if(oldpwd==''){
				flag = false;
				$("#error_oldpwd").html('Old password is required.');
			}else{
				$("#error_oldpwd").html('');
			}
			if(flag==false){
				return false;
			}else{
				$("#changepwd").submit();
			}
		}
		function profile_update_fun(){
			var fusername = $("#fusername").val();
			var fdepartment = $("#fdepartment").val();
			var flag = true;
			if(fdepartment==''){
				flag = false;
				$("#error_fdepartment").html('Department is required.');
			}else{
				$("#error_fdepartment").html('');
			}
			if(fusername==''){
				flag = false;
				$("#error_fusername").html('Username is required.');
			}else{
				$("#error_fusername").html('');
			}
			if(flag==false){
				return false;
			}else{
				$("#profileform").submit();
			}
		}
	</script>

			