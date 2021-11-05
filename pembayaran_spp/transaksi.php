<?php include "header.php" ?>

<div class="container">
	<div class="page-header">
		<h3>Transaksi Pembayaran SPP</h3>
	</div>
	<form method="get" action="">
		NIS: <input type="text" name="nis" />
		<input class = 'btn btn-success' type="submit" name="cari" value="Cari Siswa" />
	</form>

	<?php
	if(isset($_GET['nis']) && $_GET['nis']!=''){
		$sqlSiswa = mysqli_query($konek, "SELECT * FROM siswa WHERE nis='$_GET[nis]'");
		$ds=mysqli_fetch_array($sqlSiswa);
		$nis = $ds['nis'];
	?>

	<h3>Biodata Siswa</h3>
	<table class="table">
		<tr>
			<td>NIS</td>
			<td>:</td>
			<td><?php echo $ds['nis']; ?></td>
		</tr>
		<tr>
			<td>Nama Siswa</td>
			<td>:</td>
			<td><?php echo $ds['namasiswa']; ?></td>
		</tr>
		<tr>
			<td>Kelas</td>
			<td>:</td>
			<td><?php echo $ds['kelas']; ?></td>
		</tr>
		<tr>
			<td>Tahun Ajaran</td>
			<td>:</td>
			<td><?php echo $ds['tahunajaran']; ?></td>
		</tr>
	</table>

	<div class="page-header">
		<h3>Tagihan SPP Siswa</h3>
	</div>
	<table border="1" class="table table-bordered table-striped" >
		<tr>
			<th>No</th>
			<th>Bulan</th>
			<th>Jatuh Tempo</th>
			<th>No. Bayar</th>
			<th>Tgl. Bayar</th>
			<th>Jumlah</th>
			<th>Keterangan</th>
			<th>Bayar</th>
		</tr>

		<?php
		$sql = mysqli_query($konek, "SELECT * FROM spp WHERE idsiswa='$ds[idsiswa]' ORDER BY jatuhtempo ASC");
		$no=1;
		while($d=mysqli_fetch_array($sql)){
			echo "<tr>
				<td>$no</td>
				<td>$d[bulan]</td>
				<td>$d[jatuhtempo]</td>
				<td>$d[nobayar]</td>
				<td>$d[tglbayar]</td>
				<td>$d[jumlah]</td>
				<td>$d[ket]</td>
				<td align='center'>";
					if($d['nobayar']==''){
						echo "<a class = 'btn btn-success btn-sm' href='proses_transaksi.php?nis=$nis&act=bayar&id=$d[idspp]'>Bayar</a>";
					}else{
						echo "-";
					}
				echo "</td>
			</tr>";
			$no++;
		}
		?>
	</table>

	<?php
	}
	?>

	<p>Pembayaran SPP dilakukan dengan cara mencari tagihan siswa dengan NIS melalui form di atas, kemudian proses pembayaran</p>
</div>

<?php include "footer.php" ?>