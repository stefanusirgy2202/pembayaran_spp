<?php include "header.php"; ?>

<div class="container">
	<div class="page-header">
		<h3>Data Guru</h3>
	</div>
	<a class = "btn btn-primary" style="margin-bottom: 10px" href="tambah_guru.php">Tambah Data</a>
	<table class="table table-bordered table-striped">
		<tr>
			<th>No</th>
			<th>Nama Guru</th>
			<th>Aksi</th>
		</tr>
		<?php
		$sql=mysqli_query($konek, "SELECT * FROM guru ORDER BY idguru ASC");
		$no=1;
		while($d=mysqli_fetch_array($sql)){
			echo "<tr>
				<td width='15px' align='center'>$no</td>
				<td>$d[namaguru]</td>
				<td width='160px' align='center'>
					<a class = 'btn btn-warning btn-sm' href='edit_guru.php?id=$d[idguru]'>Edit</a>
					<a class = 'btn btn-danger btn-sm' href='hapus_guru.php?id=$d[idguru]'>Hapus</a>
				</td>
			</tr>";
			$no++;
		}
		?>
	</table>
</div>

<?php include "footer.php"; ?>