<?php include "header.php"; ?>

<div class="container">
	<div class="page-header">
		<h3>Data Admin</h3>
	</div>
	<table border="1" class="table table-bordered table-striped">
		<tr>
			<th>No</th>
			<th>Nama admin</th>
		</tr>
		<?php
		$sql=mysqli_query($konek, "SELECT * FROM admin ORDER BY idadmin ASC");
		$no=1;
		while($d=mysqli_fetch_array($sql)){
			echo "<tr>
				<td>$no</td>
				<td>$d[namalengkap]</td>
			</tr>";
			$no++;
		}
		?>
	</table>
</div>

<?php include "footer.php"; ?>