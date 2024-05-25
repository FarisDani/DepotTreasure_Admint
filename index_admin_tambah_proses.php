<?php
include 'koneksi.php';
	$foto		= $_FILES['foto']['name'];
	$file_tmp	= $_FILES['foto']['tmp_name'];
    $productid	= $_POST['productid'];
	$name 		= $_POST['name'];
	$price 		= $_POST['price'];
	
	move_uploaded_file($file_tmp, 'foto/'.$foto);

	
	$sql = "INSERT INTO product VALUES( '$productid', '$name', '$price', '$foto')";

	$query	= mysqli_query($connect, $sql) or die(mysqli_error($connect)); 

	if($query) {
		header("location:index_admin.php");
	
	} else {
		echo "Input Data Gagal.";
	}
	
?>