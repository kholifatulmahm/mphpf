<form method="post" action="<?php $this->homeAddress('/add-new-dosen'); ?>">
    <label for="txt_nip">NIP:</label>
    <br/>
    <input style="margin-bottom: 16px; width: 20%" id="txt_nip" type="text" placeholder="Nomor Induk Pegawai" name="nip"/>
    <br/>
    <label for="txt_name">Nama:</label>
    <br/>
    <input style="margin-bottom: 16px; width: 20%" id="txt_name" type="text" placeholder="Nama Lengkap Dosen" name="nama"/>
    <br />
    <label for="txa_address">Alamat:</label>
    <br/>
    <textarea style="margin-bottom: 16px; width: 20%; height: 60px;" id="txa_address" type="text" placeholder="Alamat lengkap dosen" name="alamat"></textarea>
    <br/>
    <label for="txa_prodi">Prodi:</label>
    <br/>
    <input style="margin-bottom: 16px; width: 20%" id="txt_prodi" type="text" placeholder="Program Studi" name="prodi"/>
    <br/>
    <label for="txa_jurusan">Jurusan:</label>
    <br/>
    <input style="margin-bottom: 16px; width: 20%" id="txt_jurusan" type="text" placeholder="Jurusan" name="jurusan"/>
    <br/>
    <label for="txt_phone_number">No. Telepon:</label>
    <br/>
    <input style="margin-bottom: 16px; width: 20%" type="txt_phone_number" placeholder="No. Telepon yang aktif" name="no_telp"/>
    <br/>
    <input type="submit" name="submit" value="Simpan" />
</form>
