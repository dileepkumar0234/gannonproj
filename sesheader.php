<!DOCTYPE html>
<?php include('dbconnection.php'); 
?>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Gannon University</title>
		<link rel="icon" href="https://apply.gannon.edu/Apply/File/DownloadPicture?name=xg05_GU_Icon">
		<!-- Bootstrap CSS CDN -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" type="text/css" href="css/custom-styles.css">
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
		<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
	</head>
	<body>
		<div class="wrapper">
			<!-- Sidebar Holder -->
			<nav id="sidebar">
				<div class="sidebar-header">
					<h3><img src="https://gannon.edu/images/GU-logo.png"></h3>
				</div>
				<?php 
					$pagename = basename($_SERVER['REQUEST_URI']); 
					$upActive ='';$prActive ='';$anActive ='';$raActive ='';
					if($pagename=='uploads.php'){
						$upActive ='active';
					}else if($pagename=='dashboard.php'){
						$prActive ='active';
					}else if($pagename=='profile.php'){
						$prActive ='active';
					}else if($pagename=='analytics.php'){
						$anActive ='active';
					}else if($pagename=='rawdata.php'){
						$raActive ='active';
					}
				
				?>
				<ul class="list-unstyled components">
					<li class="<?php echo $prActive; ?>">
						<a href="dashboard.php"><span class="icon"><i class="fas fa-home"></i></span> <span class="text">Dashboard</span></a>
					</li>
					<li class="<?php echo $upActive; ?>">
						<a href="uploads.php"><span class="icon"><i class="fas fa-file-upload"></i></span> <span class="text">Upload Document</span></a>
					</li>
					<li class="<?php echo $anActive; ?>">
						<a href="analytics.php"><span class="icon"><i class="far fa-file-alt"></i></span> <span class="text">Analytics</span></a>
					</li>
					<li class="<?php echo $raActive; ?>">
						<a href="rawdata.php"><span class="icon"><i class="fa fa-download"></i></span> <span class="text">Raw Report</span></a>
					</li>
					
				</ul>
			</nav>
			<!-- Page Content Holder -->
			<div id="content">
				<div class="text-center MLogo"><img src="https://gannon.edu/images/GU-logo.png"></div>
				<div class="TopBar">
					<nav class="navbar navbar-expand-lg navbar-light">
						<div class="container-fluid">
							<button type="button" id="sidebarCollapse" class="navbar-btn toggleBtn">
								<span></span>
								<span></span>
								<span></span>
							</button>
							<button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<i class="fas fa-align-justify"></i>
							</button>
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="nav navbar-nav ml-auto">
									<li class="nav-item">
										<div class="dropdown"><span style="color:#fff;"><?php echo ucfirst($_SESSION['ses_username']); ?></span>
											<a class="btn Profile dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												<img src="images/profile.png">
											</a>
											<div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
												<a class="dropdown-item" href="profile.php">My Profile</a>
												<a class="dropdown-item" href="sigingoff.php">Logout</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</nav>
				</div>