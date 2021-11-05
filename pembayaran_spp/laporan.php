<?php include "header.php"; ?>

<div class="container">
	<div class="page-header">
		<h3>Laporan</h3>
	</div>
	<ul>
		<li><a href="laporan_data_guru.php" target="_blank">Laporan Data Guru</a></li>
		<li><a href="laporan_data_siswa.php" target="_blank">Laporan Data Siswa</a></li>
		<li>
			<strong>Laporan Pembayaran</strong><br/>
			<form method="GET" action="laporan_pembayaran.php" target="_blank">
				Mulai Tanggal <input type="date" name="tgl1" value="<?php echo date('Y-m-d'); ?>" />
				Sampai Tanggal <input type="date" name="tgl2" value="<?php echo date('Y-m-d'); ?>"/>
				<input class = 'btn btn-success' type="submit" name="tampilkan">
			</form>
		</li>
	</ul>
</div>

<?php include "footer.php"; ?>