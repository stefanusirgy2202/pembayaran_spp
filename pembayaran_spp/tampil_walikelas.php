<?php include "header.php"; ?>

<div class="container">
	<div class="page-header">
		<h3>Data Kelas dan Wali Kelas</h3>
	</div>
	<a class = "btn btn-primary" style="margin-bottom: 10px" href="tambah_walikelas.php">Tambah Data</a>
	<table border="1" class="table table-bordered table-striped">
		<tr>
			<th>No.</th>
			<th>Nama Kelas</th>
			<th>Nama Wali Kelas</th>
			<th>Aksi</th>
		</tr>
		<?php
		$sql = mysqli_query($konek, "SELECT walikelas.kelas,guru.namaguru
									FROM walikelas
									INNER JOIN guru ON walikelas.idguru=guru.idguru
									ORDER BY walikelas.kelas ASC");
		$no=1;
		while($d=mysqli_fetch_array($sql)){
			echo "<tr>
				<td width='15px' align='center'>$no</td>
				<td>$d[kelas]</td>
				<td>$d[namaguru]</td>
				<td width='160px' align='center'>
					<a class = 'btn btn-warning btn-sm' href='edit_walikelas.php?kls=$d[kelas]'>Edit</a> 
					<a class = 'btn btn-danger btn-sm' href='hapus_walikelas.php?kls=$d[kelas]'>Hapus</a>
				</td>
			</tr>";
			$no++;
		}
		?>
	</table>
</div>

<?php include "footer.php"; ?>