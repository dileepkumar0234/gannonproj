<?php 
	include('dbconnection.php');
	session_unset('ses_username');
	session_unset('ses_userid');
	session_unset('ses_email');
	session_destroy();
	header('Location:signin.php');
?>