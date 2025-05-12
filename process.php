<?php
// Cek apakah request datang dari form POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Ambil dan bersihkan data dari form
    $name = htmlspecialchars(trim($_POST["name"]));
    $harga = htmlspecialchars(trim($_POST["harga"]));
    $deskripsi = htmlspecialchars(trim($_POST["deskripsi"]));

    // Validasi sederhana
    if (!empty($name) && !empty($harga) && !empty($deskripsi)) {
        // Menampilkan hasil input ke layar
        echo "<h2>Data Pesanan</h2>";
        echo "<p><strong>Nama Barang:</strong> $name</p>";
        echo "<p><strong>Harga:</strong> $harga</p>";
        echo "<p><strong>Pesan Anda:</strong><br>" . nl2br($deskripsi) . "</p>";
    } else {
        echo "<p>Semua field harus diisi. Silakan kembali dan lengkapi form.</p>";
    }
} else {
    echo "<p>Form tidak dikirim dengan benar.</p>";
}
?>