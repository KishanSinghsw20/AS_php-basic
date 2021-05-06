<?php
define('TITLE','Change Password');
define('PAGE','changepass');
include('includes/header.php');
include('../dbconnection.php');
session_start();
if (isset($_SESSION['is_adminlogin'])) {
	$aEmail = $_SESSION['$aEmail'];
}else{
	echo "<script> location.href='login.php'</script>";
}
$aEmail = $_SESSION['$aEmail'];
	if (isset($_REQUEST['passupdate'])) {
		if ($_REQUEST['aPassword'] == "") {
			$passmsg = '<div class="alert alert-warning mt-2 text-center ml-5 col-sm-11" role="alert">Fill All Fields</div>';
		}else{
			$aPass = $_REQUEST['aPassword']; 
			$sql = "UPDATE adminlogin SET a_password ='$aPass' WHERE a_email = '$aEmail'";
			if ($conn->query($sql) == TRUE) {
				$passmsg = '<div class="alert alert-success mt-2 text-center ml-5 col-sm-11" role="alert">Updated Successfully</div>';
			}else{
				$passmsg = '<div class="alert alert-danger mt-2 text-center ml-5 col-sm-11" role="alert">Unable to Update</div>';
			}

		}
	}
	?>
<!-- Start User Change Password Form 2nd column -->
<div class="col-sm-9 col-md-10 mx-auto">
	<form action="" method="POST" class="mx-5 mt-5 shadow-lg shadow-border-box p-4">
		<h3 class="text-center"><i class="fas fa-key"></i><label for="" class="font-weight-bold pl-2">&nbsp; Change Password</label></h3>
		<div class="form-group">
			<label for="inputEmail">Email</label>
			<input type="email" class="form-control" id="inputEmail" value="<?php echo $aEmail; ?>" readonly>
		</div>
				<div class="form-group">
			<label for="inputnewpassword">New Password</label>
			<input type="password" class="form-control" id="inputnewpassword" placeholder="New Password" name="aPassword">
		</div>
		<button type="submit" class="btn btn-primary mr-4 mt-4" name="passupdate">Update</button>
		<button type="reset" class="btn btn-secondary mt-4">Reset</button>
		<?php if(isset($passmsg)){echo $passmsg;}?>
	</form>
</div>
<!-- End User Change Password Form 2nd column -->

?>







<?php
include('includes/footer.php');
?>