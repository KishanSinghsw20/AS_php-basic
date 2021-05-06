<?php
define('TITLE','Requester');
define('PAGE','requester');
include('includes/header.php');
include('../dbconnection.php');
session_start();
if (isset($_SESSION['is_adminlogin'])) {
	$aEmail = $_SESSION['$aEmail'];
}else{
	echo "<script> location.href='login.php'</script>";
}

?>

<!-- Start 2nd Column -->
<div class="col-sm-9 col-md-10 mt-5 text-center">
	<p class="bg-dark text-white p-2">List of Requesters</p>
	<?php 
		$sql = "SELECT * FROM requesterlogin";
		$result = $conn->query($sql);
		if($result->num_rows > 0){
			echo '<table class="table table-striped table-bordered text-center">';
			echo '<thead>';
					echo '<tr>';
						echo '<th scope="col">Requester Id</th>';
						echo '<th scope="col">Name</th>';
						echo '<th scope="col">Email</th>';
						echo '<th scope="col">Action</th>';
					echo '<tr>';
				echo '</thead>';
					echo '<tbody>';
					  while ($row = $result->fetch_assoc()){
						echo '<tr>';
							echo '<td>'.$row['r_login_id'].'</td>';
							echo '<td>'.$row['r_name'].'</td>';
							echo '<td>'.$row['r_email'].'</td>';
							echo '<td>';
								echo '<form action="editreq.php" method="post" class="mr-2 d-inline">';
									echo'<input type="hidden" name="id" value='.$row["r_login_id"].'><button class="btn btn-info mr-2 " name="view" value="View" type="submit"><i class="fas fa-edit"></i></button>';
									echo '</form>';
									echo '<form action="" method="post" class="d-inline">';
									echo'<input type="hidden" name="id" value='.$row["r_login_id"].'><button class="btn btn-secondary" name="delete" value="Delete" type="submit"><i class="fas fa-trash-alt"></i></button>';
								echo '</form>';
							echo '</td>';
						echo '</tr>';
					}
					echo '</tbody>';
			echo '</table>';
		}else{
			echo "<div class='alert alert-warning col-sm-6 mt-2' role='alert'> No Records Found ! </div>";
		}
		if (isset($_REQUEST['delete'])) {
			$sql = "DELETE FROM requesterlogin WHERE r_login_id = {$_REQUEST['id']}";
			if ($conn->query($sql) == TRUE) {
				echo '<meta http-equiv="refresh" content="0;URL=?deleted" />';
			}else{
				echo "<div class='alert alert-warning col-sm-6 mt-2' role='alert'> Unable to Delete Data </div>";
			}
		}
	?>
		
</div>
<div class="pull-left ml-auto mr-2 mb-3"><a href="insertreq.php" class="btn btn-info"><i class="fas fa-plus fa-2x"></i></a></div>
<!-- End 2nd column -->





<?php
include('includes/footer.php');
?>