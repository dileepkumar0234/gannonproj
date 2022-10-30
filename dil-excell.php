<?php
    $host = "localhost";
	$userName = "root";
	$password = "";
	$dbName = "gannon"; 
	// Create database connection
	$conn = new mysqli($host, $userName, $password, $dbName);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}else{
		//echo "Connected";
	}

	$query = "SELECT * FROM `course_survey`";			
	$results = $conn->query($query);
	$questions_q = "SELECT * FROM `questions` where status = 1";		
	$questions_result = $conn->query($questions_q);
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
	//echo "<pre>";	print_r($excell_arr);
	$subjects_arr = array();
	$subjects = "SELECT * FROM `faculty_courses` GROUP BY SUBJECT";			
	$subjects_results = $conn->query($subjects);
	while ($row = $subjects_results->fetch_assoc()) {
		$subjects_arr[] = $row['subject'];
	}
	
	// csv load start
	$filename = 'dil_excell_'.date('ymdhis').'.csv';
	$path = $_SERVER['DOCUMENT_ROOT'].'/first/'.$filename;
	$csvfileObj = fopen($path, "w" );	
	
	$out_put = "<table cellpadding='5' cellspacing='5'>";
	foreach($excell_arr as $question => $q_data){
	fputcsv($csvfileObj, array(''));
		$out_put .= "<tr><td colspan=6>".$questions_arr[$question]."</td></tr>";
		$lineArr = array('','','',$questions_arr[$question],'','','',);
		fputcsv($csvfileObj, $lineArr);
		$out_put .= "<tr><td></td>";
		$subjects = array();
		$subjects[] = '';
		foreach($subjects_arr as $subkey => $sub){
			$out_put .= "<td>".$sub."</td>";
			$subjects[] = $sub;
		}
		$subjects[] = 'Mean';
		fputcsv($csvfileObj, $subjects);
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
			fputcsv($csvfileObj, $sem_data);
		}
	}
	$out_put .= "</table>";
	fclose($csvfileObj);
	
	$file_name = $filename;
	$file_url = $path;
	header('Content-Type: application/octet-stream');
	header("Content-Transfer-Encoding: Binary"); 
	header("Content-disposition: attachment; filename=\"".$file_name."\""); 
	readfile($file_url);
	exit;


?>
