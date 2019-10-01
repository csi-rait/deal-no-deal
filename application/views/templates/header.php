<?php
//$admin = 0;
if (isset($this->session->userdata['logged_in'])) {
	$name = ($this->session->userdata['logged_in']['name']);
    $username = ($this->session->userdata['logged_in']['username']);
	$admin = ($this->session->userdata['logged_in']['admin']);
	//echo $admin;
	}

	?>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>CSI-RAIT Deal No Deal</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->

	<link href="<?php echo base_url(); ?>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<?php echo base_url(); ?>assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet" />


	<!-- ================== END BASE CSS STYLE ================== -->
	<!-- ================== BEGIN BASE JS ================== -->

	<!-- ================== END BASE JS ================== -->
</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div class="container-fluid text-center ">
		<a href="<?=base_url()?>"><h1 class="pull-left"> <img style="width:80px;height:auto;" src="<?=base_url()?>assets/img/csi.png" alt="" srcset=""> <b> CSI-RAIT </b> Deal Or No Deal</h1></a>
		<?php if (isset($this->session->userdata['logged_in'])) { ?>
		<div class="pull-right">
			<br><br>

			<a href="<?=base_url()?>play" class="btn btn-lg btn-default m-l-40">Home</a>
			<a href="<?=base_url()?>add" class="btn btn-lg btn-default m-l-40">Add Players</a>
			<?php
			if($admin){

			
			?>

						<a href="<?=base_url()?>Game/reset" class="btn btn-lg btn-default m-l-40">Reset All</a>


			<?php } ?>
			<a href="<?=base_url()?>leaderboard" class="btn btn-lg btn-default m-l-40">Leaderboard</a>

			<a href="<?=base_url()?>logout" class="btn btn-lg btn-default m-l-40 m-r-40">Logout</a>
		</div>
			<?php } ?>
	</div>