<?php 
class Buku{
    private $kd, $judul, $penulis, $harga, $jumHal, $tglTerbit, $isbn, $bahasa, $penerbit, $deskripsi, $kategori, $gambar, $order=0;
    public function __construct($kd, $judul, $penulis, $harga, $jumHal, $tglTerbit, $isbn, $bahasa, $penerbit, $deskripsi, $kategori, $gambar){
        $this->kd = $kd;
        $this->judul = $judul;
        $this->penulis = $penulis;
        $this->harga = $harga;
        $this->hal = $jumHal;
        $this->terbit = $tglTerbit;
        $this->isbn = $isbn;
        $this->bahasa = $bahasa;
        $this->penerbit = $penerbit;
        $this->deskripsi = $deskripsi;
        $this->kategori = $kategori;
        $this->gambar = $gambar;
    }

    public function getId() {
        return $this->kd;
    }
    public function getJudul(){
        return $this->judul;
    }
    public function getPenulis(){
        return $this->penulis;
    }
    public function getHarga(){
        return $this->harga;
    }
    public function getHalaman(){
        return $this->hal;
    }
    public function getTerbit(){
        return $this->terbit;
    }
    public function getISBN(){
        return $this->isbn;
    }
    public function getBahasa(){
        return $this->bahasa;
    }
    public function getPenerbit(){
        return $this->penerbit;
    }
    public function getDeskripsi(){
        return $this->deskripsi;
    }
    public function getKategori(){
        return $this->kategori;
    }
    public function getGambar(){
        return $this->gambar;
    }
    public function getOrder(){
        return $this->order;
    }
    public function setOrder($order){
        $this->order = $order;
    }
    public function getPajak(){
        return round($this->harga * 1.0725, 2);
    }
    public function getTotal(){
        return $this->getPajak() * $this->order;
    }

}


?>