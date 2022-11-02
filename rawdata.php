<?php
    include('sesheader.php'); 
	$userid = $_SESSION['ses_userid'];
	$query = "SELECT * FROM `course_survey` WHERE user_id=".$userid;			
	$results = $con->query($query);
	$questions_q = "SELECT * FROM `questions` where status = 1";		
	$questions_result = $con->query($questions_q);
	$questions_arr = array();
	while ($row = $questions_result->fetch_assoc()) {
		$questions_arr[$row['quest_title']] = $row['question']; 
	}
	$excell_arr = array();
	while ($row = $results->fetch_assoc()) {
		// questions
		$semister = substr($row['CourseCode'],0,4);
		$subject = substr($row['CourseCode'],4,10);
		//echo $semister."-".$subject; die;
		//for($question = 1;$question < 32 ; $question++){
		foreach($questions_arr as $question => $question_title ){
			$excell_arr[$question][$semister][$subject] = $row[$question];
		}
	}
	// echo "<pre>";	print_r($excell_arr);die;
	$subjects_arr = array();
	$subjects = "SELECT * FROM `faculty_courses` WHERE fuserid=".$userid."  GROUP BY SUBJECT";		
	$subjects_results = $con->query($subjects);
	while ($row = $subjects_results->fetch_assoc()) {
		$subjects_arr[] = $row['subject'];
	}
	
?>
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Download Report</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<a href="exportreport.php"><i class="fa fa-download" aria-hidden="true"></i></a>
			</div>			
		</div>
	</div>
</div>
<div class="p-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="#">Raw Report</a></li>
		</ol>
	</nav>					
	<div class="white-box p-3">
		<button type="button" class="btn btn-primary float-right mb-2" data-toggle="modal" data-target="#exampleModalLong">Download Report</button>
		<?php 
			$out_put = "<table cellpadding='5' cellspacing='5' class='table table-sm table-dashboard data-table no-wrap mb-0 fs--1 w-100 table-responsive' id='raw_data'>";
			$i=1; foreach($excell_arr as $question => $q_data){ 
					$lineArr = array('','','',$questions_arr[$question],'','','',);
					$out_put .= "<tr><td colspan=10><b class='text-center'>".$i.". ".$questions_arr[$question]."</b></td></tr>";
					$out_put .= "<tr class='table-active'><td></td>";
					$subjects = array();
					$subjects[] = '';
					foreach($subjects_arr as $subkey => $sub){
						$out_put .= "<td>".$sub."</td>";
						$subjects[] = $sub;
					}
					$subjects[] = 'Mean';
					$out_put .= "<td></td><td>Mean</td></tr>";
					foreach($q_data as $sem => $sem_sub){	
						$sem_data = array();
						$out_put .= "<tr><td>".$sem."</td>";
						$sem_data[] = $sem;
						$sub_mean_array = array();
						foreach($subjects_arr as $subkey => $sub){
							$sub_avg = (isset($sem_sub[$sub]))?$sem_sub[$sub]:'';
							if($sub_avg != '') $sub_mean_array[] = $sub_avg;
							$sem_data[] = $sub_avg;
							$out_put .= "<td>".$sub_avg."</td>";
						}
						$mean = array_sum($sub_mean_array)/count($sub_mean_array);
						$sem_data[] = $mean;
						$out_put .= "<td></td><td>".$mean."</td></tr>";
						$out_put .= "</tr>";
					}
				?>
			<?php $i++; } 
		$out_put .= "</table>";  
		echo $out_put;
		?>
	</div>
</div>
<?php include('sesfooter.php'); ?>