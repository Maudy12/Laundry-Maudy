<div id="sidebar-menu">
  <ul>

    <li class="menu-title">Berbaju Laundry</li>
    
    <li>
      <a href="index.php" class="waves-effect">
        <i class="mdi mdi-airplay"></i><span> Dashboard</span>
      </a>
    </li>

    <li>
      <?php 
      // menghitung data pelanggan
      $dataPelanggan = mysqli_query($conn, "SELECT * FROM tb_pelanggan");
      ?>
      <a href="?page=pelanggan" class="waves-effect">
        <i class="fa fa-users"></i>
        <span>Data Pelanggan<span class="badge badge-pill badge-primary float-right"></span></span>
      </a>
    </li>

    <li>
    <?php 
      // menghitung data jenis
      $jenis = mysqli_query($conn, "SELECT * FROM tb_jenis");
      ?>
      <a href="?page=jenis" class="waves-effect">
      <i class="fa fa-key"></i>
        <span>Jenis Layanan<span class="badge badge-pill badge-primary float-right"></span></span>
      </a>
    </li>
  
    <li>
      <?php 
      // menghitung data laundry
      $laundry = mysqli_query($conn, "SELECT * FROM tb_laundry");
      ?>
      <a href="?page=laundry" class="waves-effect">
        <i class="fa fa-shopping-cart"></i>
        <span>Transaksi Laundry<span class="badge badge-pill badge-primary float-right"></span></span>
      </a>
    </li>

    <li>
      <?php 
      // menghitung data pegeluaran
      $pengeluaran = mysqli_query($conn, "SELECT * FROM tb_pengeluaran");
      ?>
      <a href="?page=pengeluaran" class="waves-effect">
      <i class="fa fa-money"></i>
        <span>Data Pengeluaran<span class="badge badge-pill badge-primary float-right"></span></span>
      </a>
    </li>

    <li>
      <a href="logout.php" class="waves-effect" onclick="return confirm('Apakah anda ingin logout ?');">
        <i class="mdi mdi-logout m-r-5 text-muted"></i>
        <span>Logout</span>
      </a>
    </li>

  </ul>
</div>
