<?php
	include('dbconnection.php');
	if(isset($_SESSION['ses_userid']) && $_SESSION['ses_userid']!=""){
		$ses_userid = $_SESSION['ses_userid'];
		if(isset($_POST['updatepage']) && $_POST['updatepage']=="changepasswordform"){
			$oldpwd = md5($_POST['oldpwd']);
			$currpwd = $_POST['currpwd'];
			$confirmpwd = $_POST['confirmpwd'];
			$dateTime = date('Y-m-d H:i:s');
			if($confirmpwd==$currpwd){			
				$facultySql = "SELECT fid FROM faculties WHERE fpwd='$oldpwd' AND fstatus=1";
				$rs = mysqli_query($con, $facultySql);
				if(isset($rs->num_rows) && $rs->num_rows>0){
					$cpwd = md5($_POST['confirmpwd']);
					$updateprofile = "UPDATE faculties SET fpwd='$cpwd',fupdatedat='$dateTime' WHERE fid='$ses_userid'";
					$rs = mysqli_query($con, $updateprofile);
					if(isset($rs) && $rs>0){
						$_SESSION['passwordStatusMesg'] = "Password has been updated successfully.";
						$_SESSION['errorlogmes'] = "success_mesg";				
					}else{
						$_SESSION['passwordStatusMesg'] = "Password is not updated.";
						$_SESSION['errorlogmes'] = "error_mesg";
					}
				}else{
					$_SESSION['passwordStatusMesg'] = "Entered old password is not valid.";
					$_SESSION['errorlogmes'] = "error_mesg";
				}
			}else{
				$_SESSION['passwordStatusMesg'] ="Entered new passowrd and confirm password is not match.";
				$_SESSION['errorlogmes'] = "error_mesg";
			}
			header('Location:profile.php');
		}else{
			header('Location:profile.php');
		}
	}else{
		header('Location:sigingoff.php');
	}
?>