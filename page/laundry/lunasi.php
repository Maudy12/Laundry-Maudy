<?php 

// Ambil id dari URL
$id = $_GET['id'];

// Periksa apakah id valid
if (isset($id) && !empty($id)) {
    // Ubah status_pembayaran transaksi laundry menjadi lunas = 1
    $result = mysqli_query($conn, "UPDATE tb_laundry SET `status_pembayaran` = 1 WHERE id_laundry = '$id'");

    // Jika query berhasil
    if ($result) {
        echo "
        <script>
          alert('Transaksi dengan ID $id berhasil dilunasi');
          window.location.href = '?page=laundry'; // Kembali ke halaman laundry
        </script>
        ";
    } else {
        // Jika ada kesalahan saat mengupdate data
        echo "
        <script>
          alert('Gagal melunasi transaksi dengan ID $id. Silakan coba lagi.');
          window.location.href = '?page=laundry'; // Kembali ke halaman laundry
        </script>
        ";
    }
} else {
    // Jika id tidak ada atau tidak valid
    echo "
    <script>
      alert('ID transaksi tidak valid.');
      window.location.href = '?page=laundry'; // Kembali ke halaman laundry
    </script>
    ";
}

?>
