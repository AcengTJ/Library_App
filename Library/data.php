<?php
    require_once('buku.php');
    require_once('koneksi.php');

    $sql = "SELECT * FROM t_buku";
    $result = $conn->query($sql);
    $i = 0;
    while ($rows = $result->fetch_array(MYSQLI_ASSOC)) {
        $datas[$i] = new Buku($rows['Kd'], $rows['Judul'], $rows['Penulis'], $rows['Harga'],$rows['JumHal'],$rows['TglTerbit'],$rows['ISBN'],$rows['Bahasa'],$rows['Penerbit'],$rows['Deskripsi'],$rows['Kategori'],$rows['Gambar']);
        $i++;
    }
?>