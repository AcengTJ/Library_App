<?php 
    require_once('data.php');

    $qty = $_POST['order'];
    $id = $datas[0]->getId();
    $judul = $datas[0]->getJudul();
    $penulis = $datas[0]->getPenulis();
    $penerbit = $datas[0]->getPenerbit();
    $tglterbit = $datas[0]->getTerbit();
    $harga = $datas[0]->getHarga();
    $rand = rand(0, 1000000);
    $subtotal = $qty * $harga;
       
    $datas[0]->setOrder($qty);
    $total = 0;
    $total += $subtotal;

    $sql = "SELECT * FROM penjualan INSERT INTO penjualan (Faktur, Judul, Penulis, Penerbit, TglTerbit, Harga, Qty, Total) VALUES ($rand, $judul, $penulis, $penerbit, $tglterbit, $harga, $total)";
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Toko Buku</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body class="">
    <div class="col mx-5 my-2 bg-primary rounded px-3 py-3">
        <div class="col">
            <h5 class="text-light fw-bold">Detail Pembelian</h5>
        </div>

        <div class="col mx-3">
            <div class="row">
                <div class="col">
                    <p class="fw-semibold text-light">Judul</p>
                </div>
                <div class="col">
                   <p class="fw-semibold text-light"><?php echo $judul ?></p> 
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <p class="fw-semibold text-light">Quantity</p>
                </div>
                <div class="col">
                   <p class="fw-semibold text-light">x<?php echo $qty ?></p> 
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <p class="fw-semibold text-light">Harga</p>
                </div>
                <div class="col">
                   <p class="fw-semibold text-light">Rp <?php echo number_format($harga, 2, ',', '.') ?></p> 
                </div>
            </div>
        </div>

        <div class="col my-3">
            <div class="row">
                <div class="col">
                    <h5 class="fw-bold text-light">Total Pembelian</h5>
                </div>
                <div class="col">
                    <h5 class="fw-bold text-light"><?php echo number_format($total, 2, ',', '.') ?></h5>
                </div>
            </div>
        </div>

        <div class="col mt-5">
            <div class="col d-grid gap-2">
                <a href="/UAS_19412400/index.php" type="button" class="btn btn-success">Konfirmasi</a>
            </div>
            </div>
        </div>
    </div>







    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>