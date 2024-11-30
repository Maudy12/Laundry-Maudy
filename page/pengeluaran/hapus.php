<?php 

$id = $_GET['id'];

// menghapus data pengeluaran
$result = mysqli_query($conn, "DELETE FROM tb_pengeluaran WHERE id_pengeluaran = '$id'");

// jika penghapusan berhasil
if ($result) {
  echo "
    <script>
      alert('Data Pengeluaran $id berhasil dihapus');
      window.location.href = '?page=pengeluaran';
    </script>
  ";
} else {
  echo "
    <script>
      alert('Data Pengeluaran $id gagal dihapus');
      window.location.href = '?page=pengeluaran';
    </script>
  ";
}

?>
