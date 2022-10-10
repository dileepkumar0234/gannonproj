<?php include('authheader.php'); ?>
<div class="row no-gutters align-items-center justify-content-center LoginSec">
	<div class="col-12 col-md-4 col-lg-3">
		<div class="LSBox">
			<div class="text-center Logo pb-3"><img src="https://gannon.edu/images/GU-logo.png"></div>
			<h3 class="text-center pb-3">Sign Up</h3>
			<form id="signupform" method="POST" name="signupform" action="adminusersubmit.php">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="User Name" id="username" name="username">
					<span id="error_username" class="eerror_mesg"></span>
				</div>
				<div class="form-group" >
					<select class="form-control" id="department" name="department">
						<option value="">Select a Department</option>
						<option value="CIS">CIS - Computer and information sciences</option>
						<option value="Cybersecurity">CBYER - Cybersecurity</option>
						<option value="English">ENG - English</option>
						<option value="MBA">MBA - BA</option>
						<option value="Mathematics">MATH - Mathematics</option>
						<option value="Physics">PHY - Physics</option>
						<option value="Arts">Arts</option>
					</select>
					<span id="error_department" class="eerror_mesg"></span>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Email ID" id="emailid" name="emailid">
					<span id="error_emailid" class="eerror_mesg"></span>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="Password" id="newpwd" name="newpwd">
					<span id="error_newpwd" class="eerror_mesg"></span>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Confirm Password" id="confirmpwd" name="confirmpwd">
					<span id="error_confirmpwd" class="eerror_mesg"><?php if(isset($_GET['errmeg']) && $_GET['errmeg']==5){ echo  "Password and confirm password is not match."; }?></span>
				</div>				
				<button type="button" class="btn btn-primary mr-2" onClick="signupfun();">Submit</button>
				<button type="button" class="btn btn-secondary">Cancel</button>
				<div class="clearfix"></div>
				<span id="finalerror" class="eerror_mesg"><?php if(isset($_GET['errmeg']) && $_GET['errmeg']==7){ echo  "Entered email is already with us."; }?>
				<?php if(isset($_GET['errmeg']) && $_GET['errmeg']==6){ echo  "Signup is not completed."; }?></span>
			</form>
			<div class="text-center py-2 whitecolor">Do you have an account? <a href="signin.php">Sign In</a></div>
		</div>
	</div>
</div>
<?php include('authfooter.php'); ?>	
<script type="text/javascript">
	<?php 
		if(isset($_GET['errmeg']) && $_GET['errmeg']!=""){?>
		$( document ).ready(function() {			
			setTimeout('redirect_messages()', 3000);  
		});	
		function redirect_messages(){
			window.location="signup.php";
		}
	<?php
		}
	?>
	function signupfun(){
		$("#finalerror").html('');
		var username  = $("#username").val();
		var department  = $("#department").val();
		var emailid  = $("#emailid").val();
		var newpwd = $("#newpwd").val();
		var confirmpwd = $("#confirmpwd").val();
		var flag = true;
		$("#error_newpwd").html('');
		$("#error_confirmpwd").html('');
		$("#commonerror").html('');
		$("#error_emailid").html('');
		$("#error_confirmpwd").html('');
		if(confirmpwd==''){
			flag = false;
			$("#error_confirmpwd").html('Confirm password is required.');
		}
		$("#error_newpwd").html('');
		if(newpwd==''){
			flag = false;
			$("#error_newpwd").html('Password is required.');
		}
		$("#error_confirmpwd").html('');
		if(confirmpwd!=newpwd){
			flag = false;
			$("#error_confirmpwd").html('Password and confirm password is not match.');
		}
		$("#error_emailid").html('');
		if(emailid==''){
			flag = false;
			$("#error_emailid").html('Email is required.');
		}else if((emailid!='') && !(isEmail(emailid))){
			flag = false;
			$("#error_emailid").html('You have entered an invalid email.');
		}
		$("#error_department").html('');
		if(department==''){
			flag = false;
			$("#error_department").html('Department is required.');
		}
		$("#error_username").html('');
		if(username==''){
			flag = false;
			$("#error_username").html('Username is required.');
		}
		if(flag==false){
			return false;
		}else{
			$.ajax({
				type: "POST",
				url: "authusercheck.php", 
				data: {emailid:emailid},
				dataType: "json",  
				cache:false,
				success:function(data){
					if(data.message=='emailalreadyexists'){
						$("#error_emailid").html('Entered email is already with us.');
					}else{
						$("#error_emailid").html('');
						$("#error_department").html('');
						$("#error_newpwd").html('');
						$("#error_confirmpwd").html('');
						$("#signupform").submit();
					}
				}
			});
		}
	}		
</script>
