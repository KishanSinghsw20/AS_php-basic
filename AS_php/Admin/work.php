<?php
define('TITLE','Work Order');
define('PAGE','work');
include('includes/header.php');
include('../dbconnection.php');
session_start();
if (isset($_SESSION['is_adminlogin'])) {
	$aEmail = $_SESSION['$aEmail'];
}else{
	echo "<script> location.href='login.php'</script>";
}
?>

<div class="col-sm-9 col-md-10 mt-5">
	<?php 
		$sql = "SELECT * FROM  assingwork";
		$result = $conn->query($sql);
		if($result->num_rows > 0){
			echo '<p class="bg-dark text-center text-white p-2">Work Order List</p>';
			echo '<table class="table table-striped table-bordered text-center">';
				echo '<thead>';
					echo '<tr>';
						echo '<th scope="col">Req Id</th>';
						echo '<th scope="col">Req Info</th>';
						echo '<th scope="col">Name</th>';
						echo '<th scope="col">Address</th>';
						echo '<th scope="col">City</th>';
						echo '<th scope="col">Mobile</th>';
						echo '<th scope="col">Developer</th>';
						echo '<th scope="col">Assigned Date</th>';
						echo '<th scope="col">Action</th>';
					echo '<tr>';
				echo '</thead>';
					echo '<tbody>';
					  while ($row = $result->fetch_assoc()){
						echo '<tr>';
							echo '<td>'.$row['request_id'].'</td>';
							echo '<td>'.$row['request_info'].'</td>';
							echo '<td>'.$row['requester_name'].'</td>';
							echo '<td>'.$row['requester_add2'].'</td>';
							echo '<td>'.$row['requester_city'].'</td>';
							echo '<td>'.$row['requester_mobile'].'</td>';
							echo '<td>'.$row['assign_deve'].'</td>';
							echo '<td>'.$row['assign_date'].'</td>';
							echo '<td>';
								echo '<form action="viewassignwork.php" method="post" class="mr-2 d-inline">';
									echo'<input type="hidden" name="id" value='.$row["request_id"].'><button class="btn btn-info mr-2 " name="view" value="View" type="submit"><i class="fas fa-edit"></i></button>';
									echo '</form>';
									echo '<form action="" method="post" class="d-inline">';
									echo'<input type="hidden" name="id" value='.$row["request_id"].'><button class="btn btn-secondary" name="delete" value="Delete" type="submit"><i class="fas fa-trash-alt"></i></button>';
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
			$sql = "DELETE FROM assingwork WHERE request_id = {$_REQUEST['id']}";
			if ($conn->query($sql) == TRUE) {
				echo '<meta http-equiv="refresh" content="0;URL=?deleted" />';
			}else{
				echo "<div class='alert alert-warning col-sm-6 mt-2' role='alert'> Unable to Delete Data </div>";
			}
		}
	?>
</div>
<?php
include('includes/footer.php');
?>