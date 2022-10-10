<?php 
	include('dbconnection.php'); 
	if(isset($_POST['emailid']) && $_POST['emailid']!=""){
		$emailid = $_POST['emailid'];
		$useremailCheckSql = "SELECT fid FROM faculties WHERE femailid='$emailid' AND fstatus=1";
		$rs = mysqli_query($con, $useremailCheckSql);
		if(isset($rs->num_rows) && $rs->num_rows>0){				
			$rev = mysqli_fetch_array($rs);
			$fid = $rev['fid'];
			echo json_encode(array('status'=>'fail','message'=>'emailalreadyexists'));exit;	
		}else{
			echo json_encode(array('status'=>'success','message'=>'success'));exit;	
		}		
	}else{
		echo json_encode(array('status'=>'fail','message'=>'emailisrequired'));exit;
	}
?>