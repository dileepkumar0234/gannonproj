<?php include('sesheader.php'); 
	$questionSql = "SELECT * FROM `questions` WHERE status=1 ORDER BY questid ASC";
	$rs = mysqli_query($con,$questionSql);
	$questions =array();
	if(isset($rs) && !empty($rs)){	
		while($line = mysqli_fetch_array($rs)){
			$questions[] = $line;
		}
	}
	$userid = $_SESSION['ses_userid'];
	$facultyCoursesSql = "SELECT fcid,acdemicyear,semester,subject FROM `faculty_courses` WHERE status=1 AND fuserid=$userid ORDER BY fcid ASC";
	$rss = mysqli_query($con,$facultyCoursesSql);
	$res =array();
	if(isset($rss) && !empty($rss)){	
		while($line = mysqli_fetch_array($rss)){
			$res[] = $line;
		}
	}
?>
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
					<select class="form-control" id="" name="">
						<?php foreach($res as $resq) { ?>
							<option value="<?php echo $resq['fcid']; ?>"><?php echo $resq['acdemicyear'].''.$resq['semester']; ?></option>
						<?php } ?>
					</select>
				</div>
			</div>
			<div class="col-12 col-md-3">
				<div class="form-group">
					<label>Semester <span class="required">*<span></label>
					<select class="form-control" id="" name="">
						<?php foreach($res as $resq) { ?>
							<option value="<?php echo $resq['fcid']; ?>"><?php echo $resq['acdemicyear'].''.$resq['semester']; ?></option>
						<?php } ?>
					</select>
				</div>
			</div>
			<div class="col-12 col-md-3">
				<div class="form-group mb-3">
					<label>Question <span class="required">*<span></label>
					<select class="form-control">
						<?php foreach($questions as $quest){ ?>
							<option value="<?php echo $quest['quest_title']; ?>"><?php echo $quest['question']; ?></option>
						<?php } ?>
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