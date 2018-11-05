<?php //echo phpinfo(); ?>
<?php $this->load->view("restaurant/header") ?>
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
	<div class="row" style="height: 10px"></div>
	<div class="row" style="height: 170px;">
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
	<div class="row" style="height: 65px;">
			<div class="col-sm-2" style="background-color:lightgrey;">
				Kode Barang : <input type = "text" placeholder="B0003"></input>
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Nama Barang : <input style="background-color:lightgrey ;border-style: solid;border-width: thin;"  type = "text" placeholder="Buku Tulis"></input>
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Stock : <input  style="background-color:lightgrey;border-style: solid;border-width: thin;" type = "text" placeholder="96"></input>
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Harga Satuan : <br>Rp. <input  style="background-color:lightgrey;border-style: solid;border-width: thin;" type = "text" placeholder="<?php echo number_format("1000000",2)?>" size="18"></input>
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Jumlah Jual : <input type = "text" placeholder="2"></input>
			</div>
			<div class="col-sm-2" style="background-color:lightgrey;">
				Harga Akhir : <br>Rp. <input  style="background-color:lightgrey;border-style: solid;border-width: thin;" type = "text" placeholder="<?php echo number_format("2000000",2)?>" size="18"></input>
			</div>
	</div>
	<div class="row" style="height: 10px"></div>
	<div class="row" style="height: 30px">
		<button type="button" class="btn btn-warning">Cari Barang</button>
		<button type="button" class="btn btn-danger">Simpan Item</button>
		<button type="button" class="btn btn-danger">Batal Item</button>
		<button type="button" class="btn btn-danger" style="pull:right">Hapus Semua Item</button>
	</div>
	<div class="row" style="height: 10px">
	</div>
	<div class="row" style="height: 30px">
		<table border="1px">
			<tr>
				<th><center>Kode Makanan</center></th>
				<th>Nama Makanan</th>
				<th>Jumlah Dipesan</th>
				<th>Harga Satuan</th>
				<th>Harga Akhir</th>
				<th>Opsi</th>
			</tr>
			<tr>
				<td>B0001</td>
				<td>Penyetan</td>
				<td>5</td>
				<td class="currency">5000</td>
				<td class="currency">25000</td>
				<td><button  class="btn btn-warning" >Hapus</button></td>
			</tr>
		</table>
	</div>
	<div class="row" style="height: 50px">
	</div>
	<div class="row" style="height: 200px">
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
</body>
<?php $this->load->view("_footer");?>
</html>