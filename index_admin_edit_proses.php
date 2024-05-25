<?php
include 'koneksi.php';
	$foto		= $_FILES['foto']['name'];
	$file_tmp	= $_FILES['foto']['tmp_name'];
	$name 		= $_POST['name'];
	$price 		= $_POST['price'];
	$productid	= $_POST['productid'];
	move_uploaded_file($file_tmp, 'foto/'.$foto);

	
	$sql = "UPDATE product SET name='$name', price='$price', foto='$foto' where productid='$productid'";

	$query	= mysqli_query($connect, $sql) or die(mysqli_error($connect)); 

	if($query) {
		header("location:index_admin.php");
	
	} else {
		echo "Input Data Gagal.";
	}
	
?>