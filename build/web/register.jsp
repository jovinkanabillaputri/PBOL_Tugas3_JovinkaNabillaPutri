<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Mahasiswa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="form-wrapper">
    <div class="form-container">
        <h2>Form Input Mahasiswa</h2>

    <form action="prosesMahasiswa.jsp" method="POST">

        <label>NIM:</label>
        <input type="text" name="nim" required>

        <label>Nama:</label>
        <input type="text" name="nama" required>

        <label>No Telepon:</label>
        <input type="text" name="telp" placeholder="08xxxxxxxxxx" required>
        
        <label>Email:</label>
        <input type="text" name="email" placeholder="contoh@email.com" required>
        
        <label>Program Studi:</label>
        <select name="prodi">
            <option>Informatika</option>
            <option>Sistem Informasi</option>
            <option>Teknik Komputer</option>
        </select>

        <div class="inline-group">
            <label>Jenis Kelamin :</label>
            <input type="radio" name="jk" value="Laki-laki"> Laki-laki
            <input type="radio" name="jk" value="Perempuan"> Perempuan
        </div>

        <div class="inline-group">
            <label>Hobi :</label>
            <input type="checkbox" name="hobi" value="Membaca"> Membaca
            <input type="checkbox" name="hobi" value="Gaming"> Gaming
            <input type="checkbox" name="hobi" value="Olahraga"> Olahraga
       </div>

        <label>Alamat:</label>
        <textarea name="alamat"></textarea>

        <div class="button-group">
            <button type="submit">Simpan</button>
            <button type="reset">Reset</button>
        </div>

        </form>
    </div>
</div>

</body>
</html>