<?php include('sesheader.php'); 
	$userid = $_SESSION['ses_userid'];
	$questListSql = "SELECT question FROM `questions`";
	$rss = mysqli_query($con, $questListSql);
	$quests = array();
	if(isset($rss) && !empty($rss)){
		while($line = mysqli_fetch_array($rss)){
			$quests[] = $line;
		}
	}
	$qcnt = count($quests);
	$seListSql = "SELECT CONCAT(acdemic2year,semester) as seme,COUNT(fcid) AS cnt FROM `faculty_courses`  WHERE fuserid=".$userid." GROUP BY acdemic2year,semester";
	$rss = mysqli_query($con, $seListSql);
	$semeters = array();
	if(isset($rss) && !empty($rss)){
		while($line = mysqli_fetch_array($rss)){
			$semeters[] = $line;
		}
	}
	$secnt = count($semeters);
	$subjectsListSql = "SELECT SUBJECT,COUNT(SUBJECT) AS cnt FROM `faculty_courses` WHERE fuserid=".$userid." GROUP BY SUBJECT";
	$rss = mysqli_query($con, $subjectsListSql);
	$subjs = array();
	if(isset($rss) && !empty($rss)){
		while($line = mysqli_fetch_array($rss)){
			$subjs[] = $line;
		}
	}
	$scnt = count($subjs);
	$displayStatusResultSql = "SELECT coursecode,ROUND(AVG(question_1),1) AS quest1,ROUND(AVG(question_2),1) AS quest2,ROUND(AVG(question_3),1) AS quest3 ,ROUND(AVG(question_4),1) AS quest4,ROUND(AVG(question_5),1) AS quest5,ROUND(AVG(question_6),1) AS quest6,ROUND(AVG(question_7),1) AS quest7,ROUND(AVG(question_8),1) AS quest8,ROUND(AVG(question_9),1) AS quest9,ROUND(AVG(question_10),1) AS quest10,ROUND(AVG(question_12),1) AS quest11,ROUND(AVG(question_13),1) AS quest12,ROUND(AVG(question_14),1) AS quest13,ROUND(AVG(question_15),1) AS quest14,ROUND(AVG(question_16),1) AS quest15,ROUND(AVG(question_17),1) AS quest16,ROUND(AVG(question_18),1) AS quest17,ROUND(AVG(question_19),1) AS quest18,ROUND(AVG(question_20),1) AS quest19,ROUND(AVG(question_21),1) AS quest20,ROUND(AVG(question_22),1) AS quest21,ROUND(AVG(question_24),1) AS quest22,ROUND(AVG(question_25),1) AS quest23,ROUND(AVG(question_26),1) AS quest24,ROUND(AVG(question_27),1) AS quest25,ROUND(AVG(question_28),1) AS quest26,ROUND(AVG(question_30),1) AS quest27,ROUND(AVG(question_31),1) AS quest28,ROUND(AVG(question_32),1)AS quest29 FROM `course_survey` cs WHERE cs.user_id=".$userid;
	$rs = mysqli_query($con, $displayStatusResultSql);
	$subjects =array();
	$questions1 =array();
	if(isset($rs) && !empty($rs)){	
		$results = array();
		while($line = mysqli_fetch_array($rs)){
			$results[] = $line;
		}
		$i=0;
		foreach($results as $key=>$arrayres){
			$subjects[$i]= $arrayres['coursecode'];
			$questions1['Class Standing'] = $arrayres['quest1'];
			$questions1['Assigned readings'] = $arrayres['quest2'];
			$questions1['Supplementary materials (handouts)'] = $arrayres['quest3'];
			$questions1['Assignments'] = $arrayres['quest4'];
			$questions1['Lectures'] = $arrayres['quest5'];
			$questions1['Discussion'] = $arrayres['quest6'];
			$questions1['GROUP WORK'] = $arrayres['quest7'];
			$questions1['Off-campus/site visits'] = $arrayres['quest8'];
			$questions1['Laboratory/clinical WORK'] = $arrayres['quest9'];
			$questions1['USE of ON-line resources'] = $arrayres['quest10'];
			$questions1['Presentation of material'] = $arrayres['quest11'];
			$questions1['Organization of the course'] = $arrayres['quest12'];
			$questions1['USE of class TIME'] = $arrayres['quest13'];
			$questions1['Enthusiasm FOR the SUBJECT matter'] = $arrayres['quest14'];
			$questions1['Ability TO communicate'] = $arrayres['quest15'];
			$questions1['Clarity of expectations'] = $arrayres['quest16'];
			$questions1['Creative instruction'] = $arrayres['quest17'];
			$questions1['Encouragement of class discussion'] = $arrayres['quest18'];
			$questions1['Response TO student questions/comments'] = $arrayres['quest19'];
			$questions1['Respectful treatment of students'] = $arrayres['quest20'];
			$questions1['Availability outside of class'] = $arrayres['quest21'];
			$questions1['Written assignments/Projects'] = $arrayres['quest22'];
			$questions1['Oral presentations'] = $arrayres['quest23'];
			$questions1['Classroom discussion/participation'] = $arrayres['quest24'];
			$questions1['Homework assignments'] = $arrayres['quest25'];
			$questions1['Exams/quizzes'] = $arrayres['quest26'];
			$questions1['Overall quality of the course'] = $arrayres['quest27'];
			$questions1['Overall performance of the faculty.'] = $arrayres['quest28'];
			$questions1['The quality of your learning experience.'] = $arrayres['quest29'];
			$i++;
		}
	}
	arsort($questions1);	
	$datares = array();
	$k=0;
	foreach($questions1 as $key=>$value){
		$datares[$k]['name']= $key;
		$datares[$k]['y']= (float)$value;
		if($k==9){
			break;
		}
		$k++;
	}
	$dataPoints[] = array(
		'name'  => 'Avg. Each Question',
		'colorByPoint'=>true,
		'data'  => $datares
	);
	$data =json_encode($dataPoints);
?>
<style>
	.highcharts-credits {
		display: none !important;
	}
</style>
<div class="content-wrapper p-3">	
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="#">Dashboard</a></li>
		</ol>
	</nav>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-xl px-4 mt-n10">
				<div class="row">
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-primary text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75 small">No of Subjects</div>
										<div class="text-lg fw-bold"><?php echo $scnt; ?></div>
									</div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar feather-xl text-white-50"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
								</div>
							</div>
							<div class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="javascript:void(0);" data-toggle="modal" data-target="#tmembersModal">View list</a>	
							</div>
						</div>
					</div>
					<style>
						#tmembersModal .modal-content
						{
							min-height:500px;
						}
					</style>
					<div class="modal fade" id="tmembersModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLongTitle">Subjects</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<table class="table table-bordered table-hover">
										<tbody>	
											<?php if($scnt>0){ foreach($subjs as $key=>$val) {?>
												<tr>
													<td><?php echo $val['SUBJECT']; ?></td>
													<td class="numeric"><span class="badge"><?php echo $val['cnt']; ?></span></td>
												</tr>
											<?php } } ?>
										</tbody>
									</table>
								</div>			
							</div>
						</div>
					</div>
					<style>
						#tmembersModall .modal-content
						{
							min-height:500px;
						}
					</style>
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-warning text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75 small">No of Semesters</div>
										<div class="text-lg fw-bold"><?php echo $secnt; ?></div>
									</div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-square feather-xl text-white-50"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>									
								</div>
							</div>
							<div class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="javascript:void(0);" data-toggle="modal" data-target="#tmembersModall">View list</a>								
							</div>
						</div>
						<div class="modal fade" id="tmembersModall" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">Semeters</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<table class="table table-bordered table-hover">
											<tbody>	
												<?php if($secnt>0){ foreach($semeters as $key=>$val) {?>
													<tr>
														<td><?php echo $val['seme']; ?></td>
													</tr>
												<?php } } ?>
											</tbody>
										</table>
									</div>			
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-success text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75 small">No of Questions</div>
										<div class="text-lg fw-bold"><?php echo $qcnt; ?></div>
									</div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-dollar-sign feather-xl text-white-50"><line x1="12" y1="1" x2="12" y2="23"></line><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path></svg>
								</div>
							</div>
							<div class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="javascript:void(0);" data-toggle="modal" data-target="#questModall">View List</a>								
							</div>
						</div>
						<style>
							#questModall .modal-content
							{
								min-height:500px;
							}
						</style>
						<div class="modal fade" id="questModall" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">Questions</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<table class="table table-bordered table-hover">
											<tbody>	
												<?php if($qcnt>0){ $i=1; foreach($quests as $key=>$val) {?>
													<tr>
														<td><?php echo $i; ?></td>
														<td><?php echo $val['question']; ?></td>
													</tr>
												<?php $i++; } } ?>
											</tbody>
										</table>
									</div>			
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-danger text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75 small">My Profile</div>
										<div class="text-lg fw-bold"><?php echo $_SESSION['ses_username'];?></div>
										<div class="text-lg fw-bold"><small>professor</small></div>
									</div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle feather-xl text-white-50"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
								</div>
							</div>
							<div class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="profile.php">View profile</a>								
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6 mb-4">
						<div class="card card-header-actions h-100">							
							<div class="card-body">
								<div id="myAreaChart"></div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 mb-4">
						<div class="card card-header-actions h-100">
							<div class="card-header">
								Monthly Revenue								
							</div>
							<div class="card-body">
								<div class="chart-bar"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div><canvas id="myBarChart" width="590" height="240" class="chartjs-render-monitor" style="display: block; width: 590px; height: 240px;"></canvas></div>
							</div>
						</div>
					</div>
				</div>
                        
			</div>
		</main>
	</div>
</div>
<?php include('sesfooter.php'); ?>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script>
	$(function(){
		Highcharts.chart('myAreaChart', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Top 10 feedback on questions'
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			accessibility: {
				point: {
					valueSuffix: '%'
				}
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: <?php echo $data; ?>
		});
	});	
</script>