<?php
include('dbconnection.php');
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

if(isset($_POST['save_excel_data']) && $_POST['save_excel_data']==1)
{
    $fileName = $_FILES['import_file']['name'];
    $file_ext = pathinfo($fileName, PATHINFO_EXTENSION);

	$yearsList = array("12"=>"2012","13"=>"2013","14"=>"2014","15"=>"2015","16"=>"2016","17"=>"2017","18"=>"2018","19"=>"2019","20"=>"2020","21"=>"2021","22"=>"2022","23"=>"2023","24"=>"2024","25"=>"2025","26"=>"2026");
    $allowed_ext = ['xls','csv','xlsx'];
    if(in_array($file_ext, $allowed_ext))
    {
				
		$uid = $_SESSION['ses_userid'];
        $inputFileNamePath = $_FILES['import_file']['tmp_name'];
        $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($inputFileNamePath);
        $data = $spreadsheet->getActiveSheet()->toArray();
        $count = "0";
        foreach($data as $val)
        {
            if($count > 0)
            {					
                $coursecode = $val[5];
				$spStatus=0;
				$faStatus=0;
				if($coursecode!=""){
					$spStatus = strpos($coursecode,'SP');
					$faStatus = strpos($coursecode,'FA');
					if($spStatus){
						$data = explode("SP",$coursecode);
						$semester ='SP';
					}else if($faStatus){
						$data = explode("FA",$coursecode);
						$semester ='FA';
					}
					$ResponseUniqueId = $val[0];
					$UserIP = $val[1];
					$Path = $val[2];
					$LevelName = $val[3];
					$LevelID = $val[4];
					$CourseCode = $val[5];
					$CourseTitle = $val[6];
					$UniqueID = $val[7];
					$SurveyStart = $val[8];
					$SurveyEnd =$val[9];
					$InstructorName = $val[10];
					$InstructorUsername = $val[11];
					$InstructorEmail = $val[12];
					$InstructorEnrollments = $val[13];
					$TAEnrollments = $val[14];
					$Enrollments = $val[15];
					$Respondents = $val[16];
					$ResponseRate = $val[17];
					$SubmitDate = $val[18];
					$SubmitDevice = $val[19];
					$question_1	= $val[20];
					$question_2	= $val[21];
					$question_3	= $val[22];
					$question_4	= $val[23];
					$question_5	= $val[24];
					$question_6	= $val[25];
					$question_7	= $val[26];
					$question_8	= $val[27];
					$question_9	= $val[28];
					$question_10 = $val[29];
					$question_11 = $val[30];
					$question_12 = $val[31];
					$question_13 = $val[32];
					$question_14 = $val[33];
					$question_15 = $val[34];
					$question_16 = $val[35];
					$question_17 = $val[36];
					$question_18 = $val[37];
					$question_19 = $val[38];
					$question_20 = $val[39];
					$question_21 = $val[40];
					$question_22 = $val[41];
					$question_23 = $val[42];
					$question_24 = $val[43];
					$question_25 = $val[44];
					$question_26 = $val[45];
					$question_27 = $val[46];
					$question_28 = $val[47];
					$question_29 = $val[48];
					$question_30 = $val[49];
					$question_31 = $val[50];
					$question_32 = $val[51];
					$question_33 = $val[52];

					if(isset($data)){					
						$ayear = $data[0];
						$ayear = $yearsList[$data[0]];
						$asubj = $data[1];
						$acdemic2year = $data[0];
						$courseCheck = "SELECT count(fcid) AS cnt FROM faculty_courses WHERE coursecode='$coursecode' AND fuserid=$uid AND status=1";
						$rs = mysqli_query($con, $courseCheck);
						$rev = mysqli_fetch_array($rs);
						if(isset($rs) && isset($rev['cnt']) && $rev['cnt']!=0){
							// continue;
						}else{
							$courseinsert = "INSERT INTO faculty_courses (fuserid,coursecode,acdemicyear,semester,subject,acdemic2year) VALUES ($uid,'$coursecode','$ayear','$semester','$asubj')";
							$result = mysqli_query($con, $courseinsert);
						}
						$coursesurveyinsert = "INSERT INTO `course_survey` (`user_id`, `ResponseUniqueId`, `UserIP`, `Path`, `LevelName`, `LevelID`, `CourseCode`, `CourseTitle`, `UniqueID`, `SurveyStart`, `SurveyEnd`, `InstructorName`, `InstructorUsername`, `InstructorEmail`, `InstructorEnrollments`, `TAEnrollments`, `Enrollments`, `Respondents`, `ResponseRate`, `SubmitDate`, `SubmitDevice`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `question_6`, `question_7`, `question_8`, `question_9`, `question_10`, `question_11`, `question_12`, `question_13`, `question_14`, `question_15`, `question_16`, `question_17`, `question_18`, `question_19`, `question_20`, `question_21`, `question_22`, `question_23`, `question_24`, `question_25`, `question_26`, `question_27`, `question_28`, `question_29`, `question_30`, `question_31`, `question_32`, `question_33`) VALUES ($uid,'$ResponseUniqueId','$UserIP','$Path','$LevelName','$LevelID','$CourseCode','$CourseTitle','$UniqueID','$SurveyStart','$SurveyEnd','$InstructorName','$InstructorUsername','$InstructorEmail','$InstructorEnrollments','$TAEnrollments','$Enrollments','$Respondents','$ResponseRate','$SubmitDate','$SubmitDevice','$question_1','$question_2','$question_3','$question_4','$question_5','$question_6','$question_7','$question_8','$question_9','$question_10','$question_11','$question_12','$question_13','$question_14','$question_15','$question_16','$question_17','$question_18','$question_19','$question_20','$question_21','$question_22','$question_23','$question_24','$question_25','$question_26','$question_27','$question_28','$question_29','$question_30','$question_31','$question_32','$question_33')";
						$insertStatus = mysqli_query($con, $coursesurveyinsert);
					}
				}               
                $msg = true;
            }
            else
            {
                $count = "1";
            }
        }

        if(isset($msg))
        {
            $_SESSION['message'] = "Successfully Imported";
            header('Location: uploads.php');
            exit(0);
        }
        else
        {
            $_SESSION['message'] = "Not Imported";
            header('Location: uploads.php');
            exit(0);
        }
    }
    else
    {
        $_SESSION['message'] = "Invalid File";
        header('Location: uploads.php');
        exit(0);
    }
}
?>