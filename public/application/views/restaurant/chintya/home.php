<?php //echo phpinfo(); ?>
<?php $this->load->view("restaurant/header") ?>

<?php
	$brg[0] = array("kodebrg" => "B0001", "nama" => "Nasi Goreng", "hargasatuan" => 13000);
	$brg[1] = array("kodebrg" => "B0002", "nama" => "Mie Goreng", "hargasatuan" => 13000);
	$brg[2] = array("kodebrg" => "B0003", "nama" => "Ayam Goreng", "hargasatuan" => 12000);
	$brg[3] = array("kodebrg" => "B0004", "nama" => "Nasi Putih", "hargasatuan" => 5000);
	$brg[4] = array("kodebrg" => "B0005", "nama" => "Cumi Bakar", "hargasatuan" => 30000);
	$brg[5] = array("kodebrg" => "B0006", "nama" => "Air Mineral", "hargasatuan" => 3000);
	$brg[6] = array("kodebrg" => "B0007", "nama" => "Sate Ayam", "hargasatuan" => 15000);
	$brg[7] = array("kodebrg" => "B0008", "nama" => "Bebek Penyet", "hargasatuan" => 27000);
	$brg[8] = array("kodebrg" => "B0009", "nama" => "Ayam Bakar", "hargasatuan" => 20000);
	$brg[9] = array("kodebrg" => "B0010", "nama" => "Es Jeruk", "hargasatuan" => 7000);
	$brg[10] = array("kodebrg" => "B0011", "nama" => "Es Teh", "hargasatuan" => 5000);
	$brg[11] = array("kodebrg" => "B0012", "nama" => "Es Susu", "hargasatuan" => 7000);
	$brg[12] = array("kodebrg" => "B0013", "nama" => "Udang Goreng", "hargasatuan" => 17000);
	$brg[13] = array("kodebrg" => "B0014", "nama" => "Kwetiau", "hargasatuan" => 15000);
	$brg[14] = array("kodebrg" => "B0015", "nama" => "Bakwan Goreng", "hargasatuan" => 10000);

?>
<body style="background-color:#ffffff">
	<ul>
		<li><a href="#home">Restaurant</a></li>
		<li><a href="#transksi">Transaksi</a></li>
		<li><a href="#utility">Utility</a></li>
		<li style="float:right"><a class="active" href="#about">Logout</a></li>
	</ul>
	<br>
	<button type="button" class="btn btn-secondary">Input Penjualan</button>
	<button type="button" class="btn btn-secondary">Lihat Data Penjualan</button>
	<div class ="container-fluid">
		<div class="row"></div>
	<div class="row">
		<div class="col-sm-6" style="background-color:lightgrey;border-style: solid;border-width: thin;">
			<br>
			<form>
				No. Nota <input type = "text" style="background-color:lightgrey;border-style: solid;border-width: thin; border-color:"></input><br><br>
				Pelanggan <input type = "text" style="border-style: solid;border-width: thin; border-color:"></input><br><br>
				Tanggal <input type = "text" style="border-style: solid;border-width: thin; border-color:"></input>
			</form><br>
		</div>
		<div class="col-sm-6" style="background-color:lightgrey;border-style: solid;border-width: thin; border-color:"></div>
	</div>
	<div class="row">
			<div class="col-sm-2" style="background-color:lightgrey;">
				Kode Barang : 
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Nama Barang : 
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Stock : 
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Harga Satuan : 
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Jumlah Jual : 
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Harga Akhir : 
			</div>
	</div>
	<div class="row">
		<div class="col-sm-2" style="background-color:lightgrey;">
			<input type="text" placeholder="B0003" id = "txtKodeBrg" onchange="find()" />
		</div>
		<div class="col-sm-2" style="background-color:lightgrey;">
			<input style="background-color:lightgrey ;border-style: solid;border-width: thin;"  type = "text" id="txtNama" placeholder="Buku Tulis" />
		</div>
		<div class="col-sm-2" style="background-color:lightgrey;">
			<input style="background-color:lightgrey;border-style: solid;border-width: thin;" type = "text" placeholder="96" />
		</div>
		<div class="col-sm-2" style="background-color:lightgrey;">
			Rp. <input  style="background-color:lightgrey;border-style: solid;border-width: thin;" type = "text" id="txtHargaSatuan" placeholder="<?php echo number_format("1000000",2)?>" size="18"/>
		</div>
		<div class="col-sm-2" style="background-color:lightgrey;">
			<input type = "text" placeholder="2" id="txtJumlah" onchange="calculate()"/>
		</div>
		<div class="col-sm-2" style="background-color:lightgrey;">
			Rp. <input  style="background-color:lightgrey;border-style: solid;border-width: thin;" type = "text" id="txtHargaAkhir" placeholder="<?php echo number_format("2000000",2)?>" size="18" />
		</div>
	</div>
	<div class="row">
		<button type="button" class="btn btn-warning">Cari Barang</button>
		<button type="button" class="btn btn-danger">Simpan Item</button>
		<button type="button" class="btn btn-danger">Batal Item</button>
		<button type="button" class="btn btn-danger" style="pull:right">Hapus Semua Item</button>
	</div>
	<div class="row">
	</div>
	<div class="row">
		<table border="1px">
			<tr>
				<th><center>Kode Makanan</center></th>
				<th>Nama Makanan</th>
				<th>Jumlah Dipesan</th>
				<th>Harga Satuan</th>
				<th>Harga Akhir</th>
				<th>Opsi</th>
			</tr>
			<?php 
				for ($i = 0; $i < count($brg); $i++) {	
			?>
					<tr>
					<td><?php echo $brg[$i]["kodebrg"] ?></td>
					<td><?php echo $brg[$i]["nama"] ?></td>
					<td>5</td>
					<td class="currency"><?php echo $brg[$i]["hargasatuan"] ?></td>
					<td class="currency">25000</td>
					<td><button  class="btn btn-warning" >Hapus</button></td>
				</tr>	
			<?php
				}
			?>
		</table>
	</div>
	<div class="row">
	</div>
	<div class="row">
		<div class="col-sm-3" style="background-color:lightgrey;border-style: solid;border-width: thin;">
			<form><br>
				Sub Total : Rp. 
				<input type="text"  style="background-color:lightgrey;border-style: solid;border-width: thin;" readonly></input><br><br>
				Diskon :
				<input type="text"  style=";border-style: solid;border-width: thin;"  size="3" />
				% = Rp.  
				<input type="text"  style=";border-style: solid;border-width: thin;" size="8"/> <br><br>
				Total Harga : Rp.  
				<input type="text"  style="background-color:lightgrey;border-style: solid;border-width: thin;" readonly></input>
			</form>
		</div>
		<div class="col-sm-3" style="background-color:lightgrey;border-style: solid;border-width: thin;">
			<form><br>
				Bayar : Rp. 
				<input type="text"  style="border-style: solid;border-width: thin;"/><br><br>
				Kembalian : Rp. 
				<input type="text"  style="background-color:lightgrey;border-style: solid;border-width: thin;" readonly ></input><br><br>
				<button type="button" class="btn btn-secondary">Simpan</button>
				<button type="button" class="btn btn-secondary">Batal</button>
			</form>
		</div>
		<div class="col-sm-3" style="background-color:lightgrey;border-style: solid;border-width: thin;"></div>
		<div class="col-sm-3" style="background-color:lightgrey;border-style: solid;border-width: thin;"></div>
	</div>
	</div>
</body>
<script language='javascript'>
	function find() {
		var kodebrg = $('#txtKodeBrg').val();
		var allbrg = <?php echo json_encode($brg); ?>;
		//console.log(allbrg[0].hargasatuan);
		var nama = "";
		var hargasatuan = "";
		for(i = 0; i < allbrg.length; i++){
			if (kodebrg == allbrg[i].kodebrg){
				nama = allbrg[i].nama;
				hargasatuan = allbrg[i].hargasatuan;
			}
		}
		$('#txtNama').val(nama);
		$('#txtHargaSatuan').val(hargasatuan);
	}
	
	function calculate(){
		var jumlah = $('#txtJumlah').val();
		var hargasatuan = $('#txtHargaSatuan').val();
		$('#txtHargaAkhir').val(jumlah*hargasatuan);
	}
</script>
<?php $this->load->view("_footer");?>
</html>