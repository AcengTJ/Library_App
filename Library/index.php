<?php 
    require_once('data.php');
?>



<!doctype html>
<html lang="en">

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="/css/style.css">

    <title>Toko Buku</title>
</head>

<body>
    <!-- navbar -->

    <nav class="navbar bg-light">
        <div class="container-fluid">
            <a class="navbar-brand fs-3 fw-bold">Happy Library</a>
            <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <div class="row justify-content-center mx-auto">
        <div class="col-lg-8">
                <div class="row">
                    <?php foreach ($datas as $key => $data) : ?>
                        <div class="card border-2 mx-2 px-1 col-6 col-sm-4 col-lg-3 col-md-4 my-3 box-shadow-hover pointer">
                            <div class="d-flex justify-content-center py-2">
                                <a href="detail.php?id=<?= $key; ?>"><img src="<?= $data->getGambar() ?>" style="width: 150px;"></a>
                            </div>
                            <div class="px-3 py-2">
                                <dl>
                                    <dt>
                                        <div style="white-space: nowrap; overflow: hidden;text-overflow: ellipsis; "><?= $data->getJudul(); ?></div>
                                    </dt>
                                    <dd class="px-3"><?= $data->getPenulis(); ?></dd>
                                </dl>
                                <p class="fw-bold"><?= 'Rp '.number_format($data->getHarga(),2, ',','.'); ?></p>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
        </div>
    </div>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>