<?php include('sesheader.php'); ?>
<div class="p-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="#">Analytics</a></li>
		</ol>
	</nav>	
	<div class="white-box p-3">
		<div class="row mb-2">
			<form id="fileupload" name="fileupload" action="importdata.php" method="POST" enctype="multipart/form-data">
				<div class="col-12 col-md-12">
					<div class="form-group">
						<label>Upload Doc <span class="required">*<span></label> <input type="file" class="form-control-file" id="import_file" name="import_file">
						<span id="error_import_file" class="error_mesg"></span>
					</div>
				</div>
				<input type="hidden" id="save_excel_data" name="save_excel_data" value="1">
				<div class="col-12">								
					<button type="button" name="save_excel_data" onclick="fiileSubmit();" class="btn btn-primary">Submit</button>
					<button type="button" class="btn btn-secondary" >Cancel</button>
				</div>
			 </form>			  
		</div>
		<div class="clearfix"></div>
		<?php
			if(isset($_SESSION['message']) && $_SESSION['message']!=""){
				echo "<h5 class='success_mesg'>".$_SESSION['message']."</h5>";
				unset($_SESSION['message']);
			}
		?>
		<div class="clearfix"></div>
		<?php
			$userid = $_SESSION['ses_userid'];
			$displayStatusResultSql = "SELECT coursecode,ROUND(AVG(question_1),1) AS quest1,ROUND(AVG(question_2),1) AS quest2,ROUND(AVG(question_3),1) AS quest3 ,ROUND(AVG(question_4),1) AS quest4,ROUND(AVG(question_5),1) AS quest5,ROUND(AVG(question_6),1) AS quest6,ROUND(AVG(question_7),1) AS quest7,ROUND(AVG(question_8),1) AS quest8,ROUND(AVG(question_9),1) AS quest9,ROUND(AVG(question_10),1) AS quest10,ROUND(AVG(question_12),1) AS quest11,ROUND(AVG(question_13),1) AS quest12,ROUND(AVG(question_14),1) AS quest13,ROUND(AVG(question_15),1) AS quest14,ROUND(AVG(question_16),1) AS quest15,ROUND(AVG(question_17),1) AS quest16,ROUND(AVG(question_18),1) AS quest17,ROUND(AVG(question_19),1) AS quest18,ROUND(AVG(question_20),1) AS quest19,ROUND(AVG(question_21),1) AS quest20,ROUND(AVG(question_22),1) AS quest21,ROUND(AVG(question_24),1) AS quest22,ROUND(AVG(question_25),1) AS quest23,ROUND(AVG(question_26),1) AS quest24,ROUND(AVG(question_27),1) AS quest25,ROUND(AVG(question_28),1) AS quest26,ROUND(AVG(question_30),1) AS quest27,ROUND(AVG(question_31),1) AS quest28,ROUND(AVG(question_32),1)AS quest29 FROM `course_survey` cs WHERE cs.user_id=$userid AND cs.displaystate=1 GROUP BY cs.coursecode ORDER BY id ASC";
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
					$questions1['Class Standing'][$i] = $arrayres['quest1'];
					$questions1['Assigned readings'][$i] = $arrayres['quest2'];
					$questions1['Supplementary materials (handouts)'][$i] = $arrayres['quest3'];
					$questions1['Assignments'][$i] = $arrayres['quest4'];
					$questions1['Lectures'][$i] = $arrayres['quest5'];
					$questions1['Discussion'][$i] = $arrayres['quest6'];
					$questions1['GROUP WORK'][$i] = $arrayres['quest7'];
					$questions1['Off-campus/site visits'][$i] = $arrayres['quest8'];
					$questions1['Laboratory/clinical WORK'][$i] = $arrayres['quest9'];
					$questions1['USE of ON-line resources'][$i] = $arrayres['quest10'];
					$questions1['Presentation of material'][$i] = $arrayres['quest11'];
					$questions1['Organization of the course'][$i] = $arrayres['quest12'];
					$questions1['USE of class TIME'][$i] = $arrayres['quest13'];
					$questions1['Enthusiasm FOR the SUBJECT matter'][$i] = $arrayres['quest14'];
					$questions1['Ability TO communicate'][$i] = $arrayres['quest15'];
					$questions1['Clarity of expectations'][$i] = $arrayres['quest16'];
					$questions1['Creative instruction'][$i] = $arrayres['quest17'];
					$questions1['Encouragement of class discussion'][$i] = $arrayres['quest18'];
					$questions1['Response TO student questions/comments'][$i] = $arrayres['quest19'];
					$questions1['Respectful treatment of students'][$i] = $arrayres['quest20'];
					$questions1['Availability outside of class'][$i] = $arrayres['quest21'];
					$questions1['Written assignments/Projects'][$i] = $arrayres['quest22'];
					$questions1['Oral presentations'][$i] = $arrayres['quest23'];
					$questions1['Classroom discussion/participation'][$i] = $arrayres['quest24'];
					$questions1['Homework assignments'][$i] = $arrayres['quest25'];
					$questions1['Exams/quizzes'][$i] = $arrayres['quest26'];
					$questions1['Overall quality of the course'][$i] = $arrayres['quest27'];
					$questions1['Overall performance of the faculty.'][$i] = $arrayres['quest28'];
					$questions1['The quality of your learning experience.'][$i] = $arrayres['quest29'];
					$i++;
				}
			}
		?>
		<style>
			#container {
				height: 400px;
			}

			.highcharts-figure,
			.highcharts-data-table table {
				min-width: 800px;
				max-width: 800px;
				margin: 1em auto;
			}

			#datatable {
				font-family: Verdana, sans-serif;
				border-collapse: collapse;
				border: 1px solid #ebebeb;
				margin: 10px auto;
				text-align: center;
				width: 100%;
			}

			#datatable caption {
				padding: 1em 0;
				font-size: 1.2em;
				color: #555;
			}

			#datatable th {
				font-weight: 600;
				padding: 0.5em;
			}

			#datatable td,
			#datatable th,
			#datatable caption {
				padding: 0.5em;
			}

			#datatable thead tr,
			#datatable tr:nth-child(even) {
				background: #f8f8f8;
			}

			#datatable tr:hover {
				background: #f1f7ff;
			}
			.highcharts-credits {
				display: none !important;
			}
		</style>
		<figure class="highcharts-figure" >
			<div id="container"></div>
				<table id="datatable">
					<thead>
						<tr>
						<th></th>
						<?php foreach($subjects as $subj){
								if(isset($subj)){	
									$spStatus = strpos($subj,'SP');
									$faStatus = strpos($subj,'FA');
									if($spStatus){
										$data = explode("SP",$subj);
										$semester ='SP';
									}else if($faStatus){
										$data = explode("FA",$subj);
										$semester ='FA';
									}
									if(isset($data)){
										$asubj = $data[1];								
							?>
							<th><?php echo $asubj; ?></th>
						<?php } } } ?>
						</tr>
					</thead>
					<tbody>
						<?php foreach($questions1 as $key=>$quest){ 
						?>
							<tr>
								<th><?php echo ucfirst($key);?></th>
								<?php foreach($quest as $avgquest){ ?>
									<td><?php echo $avgquest; ?></td>								
								<?php } ?>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</figure>		
	</div>
</div>
<?php include('sesfooter.php'); ?>
<script>
	function fiileSubmit(){
		var import_file = $("#import_file").val();
		var flag=true;
		if(import_file==''){
			flag=false;
			$("#error_import_file").html('Import file is required');
		}
		if(flag==false){
			return false;
		}else{
			$("#error_import_file").html('');
			$('#fileupload').submit();
		}
	}
</script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script>
	Highcharts.chart('container', {
		data: {
			table: 'datatable'
		},
		chart: {
			type: 'column'
		},
		title: {
			text: 'Course Survey'
		},				
		xAxis: {
			type: 'category'
		},
		yAxis: {
			allowDecimals: false,
			title: {
				text: 'Avg.Question Wise'
			}
		},
		tooltip: {
			formatter: function () {
				return '<b>' + this.series.name + '</b><br/>' +
					this.point.y + ' ' + this.point.name.toLowerCase();
			}
		}
	});
</script>