<?php
	include('dbconnection.php');	
	if(isset($_POST['username']) && $_POST['username']!=''){
		$username = $_POST['username'];
		if(isset($_POST['department']) && $_POST['department']!=''){
			$department = $_POST['department'];
			if(isset($_POST['emailid']) && $_POST['emailid']!=''){
				$emailid = $_POST['emailid'];
				if(isset($_POST['newpwd']) && $_POST['newpwd']!=''){
					$newpwd = $_POST['newpwd'];
					if(isset($_POST['confirmpwd']) && $_POST['confirmpwd']!=''){
						$confirmpwd = $_POST['confirmpwd'];
						if($confirmpwd==$newpwd){
							$mdnewpwd = md5($newpwd);
							$useremailCheckSql = "SELECT fid FROM faculties WHERE femailid='$emailid' AND fstatus=1";
							$rs = mysqli_query($con, $useremailCheckSql);
							if(isset($rs->num_rows) && $rs->num_rows>0){
								header('Location:signup.php?errmeg=7');
							}else{
								$insertUser = "INSERT INTO faculties (fusername, femailid, fpwd, fdepartment)
								VALUES ('$username', '$emailid', '$mdnewpwd', '$department')";
								$rs = mysqli_query($con, $insertUser);
								if($rs>0){
									$loginSql = "SELECT fusername,fid,femailid FROM faculties WHERE femailid='$emailid' AND fpwd='$mdnewpwd' AND fstatus=1";
									$rs = mysqli_query($con, $loginSql);
									if(isset($rs->num_rows) && $rs->num_rows>0){				
										$rev = mysqli_fetch_array($rs);
										$username = $rev['fusername'];
										$_SESSION['ses_username'] = $username;
										$_SESSION['ses_userid'] = $rev['fid'];
										$_SESSION['ses_email'] = $rev['femailid'];
										header('Location:profile.php');
									}
								}else{
									header('Location:signup.php?errmeg=6');
								}
							}
						}else{
							header('Location:signup.php?errmeg=5');
						}
					}else{
						header('Location:signup.php?errmeg=4');
					}
				}else{
					header('Location:signup.php?errmeg=4');
				}
			}else{
				header('Location:signup.php?errmeg=3');
			}
		}else{
			header('Location:signup.php?errmeg=2');
		}
	}else{
		header('Location:signup.php?errmeg=1');
	}
?>
