<?php
	session_start();
	include('../database/db.php');
	//echo $_FILES['pic']['name'];
	if(isset($_REQUEST['submit']))
	{

		$nam = trim($_REQUEST['pname']);     
		$id = trim($_REQUEST['pid']);
		$sid = trim($_REQUEST['psid']);
		$nid = trim($_REQUEST['pn']);		
		//$pass = trim($_REQUEST['ppass']);
		$co = trim($_REQUEST['con']);
		//$gen = $_REQUEST['sgender'];
		//$grad = $_REQUEST['class'];
		$desc="";
		//echo $gen;
		//$pho = trim($_REQUEST['pic']);
		//echo $_FILES['pic']['name'];
		if(isset($_SESSION['name']))
		{
		$r= $id;
		$desc = "../upload/".$r.".jpg";
		
		//echo $r;
		}
		unlink($desc);
		//echo $desc;
		//echo $_FILES['pic']['name'];
		//echo $desc;
			

				if(move_uploaded_file($_FILES['pic']['tmp_name'], $desc))
				{
					echo "Done!";
				}
				else
				{
					echo "Error";
				}
				
		
			
		//echo $nam;
		
		//echo $pass;
		//echo $grad;
		//echo $unam;
		if($nam!="" && $id!="" && $sid!="" && $nid!="" && $co!="")
		{
			//echo "mons";
			$conn = getConnection();
			//$sql = "insert into users values('".$r."','".$nam."','".$pass."','4')";
			$sql1 = "update parents set pname='{$nam}', nid={$nid}, contact={$co} where pid={$id}";
			//$sql1 = "insert into parents values('".$r."','".$nam."','".$sid."','".$nid."','".$co."','".$desc."')";
			//mysqli_query($conn, $sql);
			mysqli_query($conn, $sql1);
			//row = mysqli_fetch_assoc($result);
			
			//$count = mysqli_num_rows($result);
			mysqli_close($conn);
			echo "<script>
					alert('Updated');
					window.location.href='../views/adminview.php';
					</script>";
		}
		else
		{
			header('location: ../views/adminview.php');
			//echo "d";
		}
		
	}
	else{
		header('location: ../views/adminview.php');
	
	}
?>