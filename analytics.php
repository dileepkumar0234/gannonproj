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
	$facultyCoursesSql = "SELECT fcid,acdemicyear,semester,subject,acdemic2year FROM `faculty_courses` WHERE status=1 AND fuserid=$userid GROUP BY acdemicyear ORDER BY acdemicyear ASC";
	$rss = mysqli_query($con,$facultyCoursesSql);
	$res =array();
	if(isset($rss) && !empty($rss)){	
		while($line = mysqli_fetch_array($rss)){
			$res[] = $line;
		}
	}
	$semesterList =array();
	$subjectsList =array();
	$coursecodes =array();
	$dataPoints = array();
	
	$finalMean=0;
	if(isset($_GET['question']) && $_GET['question']!=""){
		$question = $_GET['question'];
		$questSql = "SELECT question FROM `questions` WHERE status=1 AND quest_title='$question'";
		$rs = mysqli_query($con,$questSql);
		$ques='';
		if(isset($rs) && !empty($rs)){	
			$line = mysqli_fetch_assoc($rs);
			$ques = $line['question'];
		}
		$question  = $_GET['question'];
		$from_date = $_GET['sDate'];
		$to_date   = $_GET['eDate'];
		$subjectsSql = "SELECT `fuserid`,`coursecode`,CONCAT(acdemic2year,semester) AS scodes,subject FROM `faculty_courses` WHERE fuserid=$userid AND `acdemicyear`>=$from_date AND `acdemicyear`<=$to_date AND STATUS=1 ORDER BY acdemicyear;";
		$rss = mysqli_query($con,$subjectsSql);		
		if(isset($rss) && !empty($rss)){
			$i=0;		
			while($line = mysqli_fetch_array($rss)){
				$coursecodes[]  = $line['coursecode'];
				$semesterList[] = $line['scodes'];
				$subjectsList[] = $line['subject'];
			}
		}
		$subjectsList = array_values(array_unique($subjectsList));
		$semesterList = array_values(array_unique($semesterList));
		
		$i=0;
		$mean_array = array();
		$mean_array1 = array();
		$mean_subject_array_sem_sub = array();
		foreach($subjectsList As $key=>$s){
			$seme = $s;
			$newdata = array();
			$j=0;
			$mean_subject_cnt = 0;
			$mean_subject_array = array();
			foreach($semesterList As $key=>$sub){
				$ccode = $sub.''.$s;
				$questionSql = "SELECT ROUND(AVG($question),1) question FROM `course_survey` WHERE user_id=$userid AND `CourseCode` LIKE '%$ccode%'";
				$rsss = mysqli_query($con,$questionSql);
				if(isset($rsss) && !empty($rsss)){
					$linee = mysqli_fetch_assoc($rsss);
					$mean_subject_cnt++;
					if(isset($linee['question']) && $linee['question']!=""){
						$newdata[$j] = floatval($linee['question']);
						$mean_subject_array[] = $linee['question'];
						$mean_subject_array_sem_sub[$sub][$s] = $linee['question'];
					}else{
						$newdata[$j] = 0;
					}
				}			
				$j++;
			}
			// $mean_array[] =  round(array_sum($mean_subject_array)/$mean_subject_cnt,2);
			// $mean_array1[] = round(array_sum($mean_subject_array)/count($mean_subject_array),2);
			$dataPoints[] = array(
				'name' => $s,
				'data' => $newdata,
				'type' => 'column',
			);
			$i++;
			//echo $i;
		} 
		$sem_mean_arr = array();
		foreach($mean_subject_array_sem_sub as $sem => $subjs){
			$sub_avg_total = 0;
			foreach($subjs as $sub => $subj_avg){
				$sub_avg_total += $subj_avg;
			}
			$sem_mean = $sub_avg_total/count($subjs);
			$sem_mean_arr[] = $sem_mean;
		}
		$dataPoints[] = array(
			'name'  => 'Avg. Each Subject',
			'type'  => 'spline',
			'data'  => $sem_mean_arr,
			'marker' =>
				array(
				'lineWidth'=> 2,
				'lineColor'=> 'Highcharts.getOptions().colors[3]',
				'fillColor'=> 'white'
				)
		);
		// $dataPoints[] = array(
			// 'name' => 'sub not exists',
			// 'data' => $mean_array,
			// 'type' => 'spline',
		// );
		$data =json_encode($dataPoints); 
		if(count($sem_mean_arr)>0){
			$finalMean = round(array_sum($sem_mean_arr)/count($sem_mean_arr),2);
		}
		//echo "<pre>";print_r($mean_subject_array_sem_sub);
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
		<form action="analytics.php" id="surveyData" method="get">
			<div class="row">			
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label>Semester <span class="required">*<span></label>
						<select class="form-control" id="sDate" name="sDate">
							<option value=''>select Year</option>
							<?php foreach($res as $resq) { ?>
								<!--<option value="<?php echo $resq['acdemic2year'].'_'.$resq['semester']; ?>"><?php echo $resq['acdemicyear'].''.$resq['semester']; ?></option>-->
								<option value="<?php echo $resq['acdemicyear']; ?>"><?php echo $resq['acdemicyear']; ?></option>
							<?php } ?>
						</select>
						<span id="error_date_start" class="error_mesg"></span>
					</div>
				</div>
				<div class="col-12 col-md-3">
					<div class="form-group">
						<label>Semester <span class="required">*<span></label>
						<select class="form-control" id="eDate" name="eDate">
							<option value=''>select Year</option>
							<?php foreach($res as $resq) { ?>
								<!--<option value="<?php echo $resq['acdemic2year']; ?>"><?php echo $resq['acdemicyear'].''.$resq['semester']; ?></option>-->
								<option value="<?php echo $resq['acdemicyear']; ?>"><?php echo $resq['acdemicyear']; ?></option>
							<?php } ?>
						</select>
						<span id="error_date_end" class="error_mesg"></span>
					</div>
				</div>
				<div class="col-12 col-md-3">
					<div class="form-group mb-3">
						<label>Question <span class="required">*<span></label>
						<select class="form-control" id="question" name="question">
							<option value=''>select Question</option>
							<?php foreach($questions as $quest){ ?>
								<option value="<?php echo $quest['quest_title']; ?>"><?php echo $quest['question']; ?></option>
							<?php } ?>
						</select>
						<span id="error_qustions" class="error_mesg"></span>
					</div>
				</div>
				<div class="col-12 col-md-3 mt-4">	
					<button type="button" class="btn btn-primary" onClick="return func_get_arg();">Submit</button>
					<button type="button" class="btn btn-secondary" >Reset</button>
				</div>
			</div>
		</form>
		<?php if($finalMean>0){ ?>
			<h5 class="mt-4">Survey Report</h5>		
			<div class="row" id="container"></div>
		<?php }else{ ?>
			<div class="row">No Result Found</div>
		<?php }?>
	</div>
</div>
<?php include('sesfooter.php'); ?>
<script>	
	function func_get_arg(){
		var year_start = $("#sDate").val();
		var year_end   = $("#eDate").val();
		var question   = $("#question").val();
		$("#error_qustions").html('');
		$("#error_date_end").html('');
		$("#error_date_start").html('');
		var flag=true;	
		if(question==''){	
			$("#error_qustions").html('Please select a question.');	
			flag=false;		
		}
		if(year_end==''){
			$("#error_date_end").html('Please select a end year.');
			flag=false;		
		}
		if(year_start==''){	
			$("#error_date_start").html('Please select a start year.');
			flag=false;		
		}	
		if(flag==false){
			return false;
		}else{			
			$("#surveyData").submit();		
		}
	} 
</script>	
<?php if(isset($_GET['question']) && $_GET['question']!=""){ ?>	
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script>
	$(function(){		
		var mean = "<?php echo $finalMean; ?>";
		if(mean>0){
			Highcharts.chart('container', {				
				chart: {
					type: 'column'				
				},				
				title: {	
					text: '<?php echo $ques; ?>',				
				},subtitle: {	
					text: 'Overall Mean: '+mean,				
				},				
				xAxis:{					
					categories: <?php echo json_encode($semesterList); ?>,					
					crosshair: true			
				},	
				yAxis: {		
					min: 0,		
					title: {	
						text: 'Ratting'		
					}			
				},				
				plotOptions: {		
					column: {		
						pointPadding: 0.2,		
						borderWidth: 0			
					}			
				},				
				series: <?php echo $data; ?>	
			});	
		}  
	});
	</script>
<?php } ?>  