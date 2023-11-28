<?php 
    require_once('data.php');
    $id = $_GET['id'];
?>


<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        img {
            width: auto;
            height: 380px;
            ;
        }
    </style>
    <title>Happy Library</title>
</head>

<body>
    <form method="POST" action="confirm.php">
        <div class="row justify-content-center mx-auto">
            <div class="col-1'id'">
                <div class="d-flex justify-content-left">
                    <h1><?= $datas[$id]->getJudul(); ?></h1>
                </div>
                <div class="d-flex justify-content-left">
                    <h7><?= $datas[$id]->getPenulis(); ?></h7>
                </div>
                <hr>
                <div class="col-lg-12 d-flex m-3">
                    <div class="col-lg-3 mx-2">
                        <img src="<?= $datas[$id]->getGambar(); ?>">
                    </div>
                    <div class="px-4 col-lg-9">
                        <h1><?= $datas[$id]->getJudul(); ?></h1>
                        <h2 style="color: red;"><?= 'Rp '.number_format($datas[$id]->getHarga(),2); ?></h2>
                        <div class=" row mx-4 col-12">
                            <div class="col-3">
                                Judul
                            </div>
                            <div class="col-9">
                                <?= $datas[$id]->getJudul(); ?> </div>
                            <div class="col-3">
                                Penulis
                            </div>
                            <div class="col-9">
                                <?= $datas[$id]->getPenulis(); ?> </div>
                            <div class="col-3">
                                ISBN
                            </div>
                            <div class="col-9">
                                <?= $datas[$id]->getISBN(); ?> </div>
                            <div class="col-3">
                                Penerbit
                            </div>
                            <div class="col-9">
                                <?= $datas[$id]->getPenerbit(); ?></div>
                            <div class="col-3">
                                Tahun Terbit
                            </div>
                            <div class="col-9">
                                <?= date("Y", strtotime($datas[$id]->getTerbit())); ?></div>
                            <div class="col-3">
                                Jumlah Halaman
                            </div>
                            <div class="col-9">
                                <?= $datas[$id]->getHalaman(); ?> </div>
                            <div class="col-3">
                                Kategori
                            </div>
                            <div class="col-9">
                                <?= $datas[$id]->getKategori(); ?> </div>
                            <div class="col-3">
                                Bahasa
                            </div>
                            <div class="col-9">
                                <?= $datas[$id]->getBahasa(); ?> </div>
                        </div>
                        <div class="m-4 d-flex justify-content-end align-items-center">
                            <span class="mx-2">Qty: </span>
                            <input type="text" value="0" name="order" size="2" class="mx-2" />
                            <input type="submit" value="Pesan" class="btn btn-primary">
                        </div>
                    </div>
                </div>
                <div class="px-5 ">
                    <h2>Deskripsi</h2>
                    <p style="text-align: justify;"><?= $datas[$id]->getDeskripsi(); ?></p>
                </div>
            </div>
        </div>
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

        <!-- Option 2: Separate Popper and Bootstrap JS -->
        <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
    </form>
</body>

</html>