<!DOCTYPE html>
<html>
<head>
	<title>Login Aplikasi Pembayaran SPP</title>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h3>Silahkan Login Menggunakan Username dan Password Anda</h3>
		</div>
		<hr/>
		<form method="post" action="">
			<table class="table">
				<tr>
					<td>Username</td>
					<td><input class="form-control" type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input class="form-control" type="password" name="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input class="btn btn-success" type="submit" value="Login" /></td>
				</tr>
			</table>
		</form>
		<?php
		if($_SERVER['REQUEST_METHOD']=='POST'){
			//variabel untuk menyimpan kiriman dari form
			$user = $_POST['username'];
			$pass = $_POST['password'];
			
			if($user=='' || $pass==''){
				echo "Form belum lengkap!!";
			}else{
				include "koneksi.php";
				$sqlLogin = mysqli_query($konek, "SELECT * FROM admin 
								WHERE username='$user' AND password='$pass'");
				$jml = mysqli_num_rows($sqlLogin);
				$d=mysqli_fetch_array($sqlLogin);
				if($jml > 0){
					session_start();
					$_SESSION['login']	= true;
					$_SESSION['id']		= $d['idadmin'];
					$_SESSION['username']=$d['username'];
					
					header('location:./index.php');
				}else{
					echo "Username dan Password anda Salah!!!";
				}
			}
		}
		?>
	</div>
</body>
</html>