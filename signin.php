<?php include('authheader.php'); 
	$loginFailMessage = "";
	$paddingclass = "";
	if(isset($_POST['emailid']) && $_POST['emailid']!=""){
		if(isset($_POST['password']) && $_POST['password']!=""){
			$emailAddress = $_POST['emailid'];
			$pwd = md5($_POST['password']);
			$loginSql = "SELECT fusername,fid,femailid FROM faculties WHERE femailid='$emailAddress' AND fpwd='$pwd' AND fstatus=1";
			$rs = mysqli_query($con, $loginSql);
			if(isset($rs->num_rows) && $rs->num_rows>0){				
				$rev = mysqli_fetch_array($rs);
				$username = $rev['fusername'];
				$_SESSION['ses_username'] = $username;
				$_SESSION['ses_userid'] = $rev['fid'];
				$_SESSION['ses_email'] = $rev['femailid'];
				header('Location:profile.php');
			}else{
				$loginFailMessage = "Invaild credentails.";
				$paddingclass = "mt-2";
			}
		}
	}
?>
	<div class="row no-gutters align-items-center justify-content-center LoginSec">
		<div class="col-12 col-md-4 col-lg-3">
			<div class="LSBox">
				<div class="text-center Logo pb-3"><img src="https://gannon.edu/images/GU-logo.png"></div>
				<h3 class="text-center pb-3">Sign In</h3>
				<form id="signinform" method="POST" name="signinform">
					<div class="form-group">
						<input type="email" class="form-control" placeholder="Email" name="emailid" id="emailid">
						<span id="error_emailid" class="eerror_mesg"></span>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password" name="password" id="password">
						<span id="error_password" class="eerror_mesg"></span>
					</div>
					<span id="commonerror" class="eerror_mesg"><?php echo $loginFailMessage; ?></span>
					<button type="button" class="btn btn-primary w-100" onclick="return siginfun();">Sign In</button>
				</form>
				<div class="text-center py-2 whitecolor <?php echo $paddingclass; ?>">Don't have an account? <a href="signup.php">Sign Up</a></div>
			</div>
		</div>
	</div>
	<script>
		function siginfun(){
			var emailid  = $("#emailid").val();
			var password = $("#password").val();
			var flag = true;
			$("#error_password").html('');
			$("#commonerror").html('');
			$("#error_emailid").html('');
			if(password==''){
				flag = false;
				$("#error_password").html('Password is required.');
			}
			if(emailid==''){
				flag = false;
				$("#error_emailid").html('Email is required.');
			}else if((emailid!='') && !(isEmail(emailid))){
				flag = false;
				$("#error_emailid").html('You have entered an invalid email.');
			}
			if(flag==false){
				return false;
			}else{
				$("#signinform").submit();   				
			}
		}		
	</script>
<?php include('authfooter.php'); ?>
