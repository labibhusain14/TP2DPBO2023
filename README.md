# TP2DPBO2023

## *Janji*
Saya Mohammad Labib Husain NIM 2101989 mengerjakan TP 2 dalam mata kuliah Desain Pemrograman Berbasis Objek untuk keberkahanNya maka saya tidak melakukan kecurangan seperti yang telah dispesifikasikan. Aamiin.

## *Soal*
Buatlah program Java yang terkoneksi dengan database MySQL. Berikut spesifikasi program yang harus dibuat:
* Program bebas, kecuali program Mahasiswa dan Book Author
* Terdapat proses Create, Read, Update, dan Delete data
* Terdapat proses Autentikasi (Login, Register) *
* Menggunakan minimal 2 tabel pada database
* Harus terdapat minimal 1 properti gambar pada class yang dibuat (gambar akan ditampilkan pada UI)
* Terdapat pergantian screen pada UI
* Terdapat button navigasi untuk beralih screen
* List data ditampilkan menggunakan card (JPanel)
* Boleh login dan/atau register. Tidak perlu ada enkripsi password

## *Desain Program*
### UML

![UML drawio](https://user-images.githubusercontent.com/119772365/231506846-f215e3f8-1dad-4bd4-be60-d00b9f5cdd91.png)
* Config : merupakan sebuah kelas dibuat untuk mengkoneksikan ke database.
* Login : merupakan sebuah kelas JFRame yang dibuat untuk autentikasi login.Terdapat atribut db didalamnya untuk menyambungkan ke kelas Config agar dapat terkoneksi dengan database.Di dalam kelas ini juga terdapat 2 button,yaitu berupa button login yang akan mengarahkan ke home page dari masing-masing role,dan button register yang akan mengarahkan ke register page.
* Register : merupakan sebuah kelas JFRame yang dibuat untuk pendaftaran akun.Terdapat atribut db didalamnya untuk menyambungkan ke kelas Config agar dapat terkoneksi dengan database.Di dalam kelas ini juga terdapat 2 button,yaitu berupa button submit yang akan mengarahkan ke login page dan sebagai informasi bahwa berhasil mendaftarkan akun,kemudian button cancel yang hanbya sekedar berpindah ke login page.
* Beranda : Home page untuk akun seller.Di dalamnya dapat menambahkan produk baru dengan memanggil kelas FormSeller.
* Home : Home page untuk akun customer.Hanya menampilkan produk-produk yang direkomendasikan kepada customer.
* seller : JCard Panel yang berisi data-data produk dari seller.Nantinya akan dipanggil di kelas Beranda.Di dalam kelas ini,user dapat mengubah produk dengan memanggil kelas FormUpdate dan juga dapat menghapus produk yang dipilih.
* Customer : JCard Panel yang berisi data-data produk yang direkomendasikan untuk customer.Nantinya akan dipanggil di kelas Home.
* FormSeller : Kelas untuk menambahkan produk baru dari kelas seller.Dipanggil dari kelas Beranda.Dan dapat dilihat tampilan penambahan produknya pada kelas Beranda.
* FormUpdate : Kelas untuk mengubah data produk yang dpilih dari kelas seller.Kelas ini nantinya akan dipanggil pada kelas seller ketika user menekan button edit.User dapat mengubah-ubah data produk baik text ataupun image.Setelah User selesai mengubah datanya,maka program akan menampilkan hasil perubahannya melalui kelas Beranda.
## *Database*

![Screenshot 2023-04-12 191535](https://user-images.githubusercontent.com/119772365/231454449-157d052e-e869-47cd-b320-6cadd3402fc7.png)

ga ada relasi databasenya,lupa cara ngehubunginnya kak.

## *Desain GUI*
* Home Seller

![Screenshot 2023-04-12 185801](https://user-images.githubusercontent.com/119772365/231450310-ceb249ea-e9ea-498c-acb7-d1f465cbba47.png)

* Card Panel Customer

![Screenshot 2023-04-12 185925](https://user-images.githubusercontent.com/119772365/231450991-fb9a822d-3841-41aa-a0c9-97c8e0cdf7ab.png)

* Form Add and Update Produk

![Screenshot 2023-04-12 190303](https://user-images.githubusercontent.com/119772365/231451277-fa4c04b8-66ee-4cf9-8206-cdb7814fa252.png)

* Home Customer

![Screenshot 2023-04-12 190354](https://user-images.githubusercontent.com/119772365/231451589-f1963910-7f4b-488c-a3c3-257c3261f52e.png)

* Login

![Screenshot 2023-04-12 190519](https://user-images.githubusercontent.com/119772365/231451820-0adf491c-5904-4b01-a689-e0ad6470bb6e.png)

* Register

![Screenshot 2023-04-12 190559](https://user-images.githubusercontent.com/119772365/231451935-2f6c37b2-35b4-4c7a-bdf0-e6e8dd533577.png)

* Card Panel Seller

![Screenshot 2023-04-12 190733](https://user-images.githubusercontent.com/119772365/231452346-c3bd376e-aa0e-4eac-b999-98206f5197bd.png)

## *Alur Program*
* Customer 
1. Login terllebih dahulu dengan akun yang sudah tertera.Jika tidak ada akun,bisa registrasi dengan memilih role customer.

Registrasi:

![Screenshot 2023-04-12 192618](https://user-images.githubusercontent.com/119772365/231456660-bc23bad1-b55c-47a8-8f57-6fb04385c12a.png)

Login:

![Screenshot 2023-04-12 192217](https://user-images.githubusercontent.com/119772365/231455686-a91a02ef-f8cd-4ecb-ad53-babfe4365e18.png)

2. Setelah login, maka akan muncul beberapa rekomendasi produk untuk anda,tampilannya sebagai berikut:
![Screenshot 2023-04-12 192155](https://user-images.githubusercontent.com/119772365/231455879-24fc68f3-4e1c-4736-836c-b1c02f228570.png)
3. Anda bisa keluar dari akun dengan menekan button logout pada ujung kanan atas.
* Seller
1. Login terllebih dahulu dengan akun yang sudah tertera.Jika tidak ada akun,bisa registrasi dengan memilih role seller.**Untuk Gambar sama seperti Customer*.
2. Setelah login, maka akan muncul beberapa produk yang dijual,tampilannya sebagai berikut:
![Screenshot 2023-04-12 193118](https://user-images.githubusercontent.com/119772365/231458018-e1e64567-475d-4313-959b-6c1c63eac8f8.png)
3. Untuk menambahkan produk,bisa dengan menekan button Add Produk.Lalu isi semua data-data produk.
![Screenshot 2023-04-12 193543](https://user-images.githubusercontent.com/119772365/231459097-8315a504-74d3-4bd5-a44b-b09e4d776db7.png)

Maka produk yang sudah ditambahkan akan muncul di tampilan home produk yang dijual

![Screenshot 2023-04-12 193728](https://user-images.githubusercontent.com/119772365/231459749-dc32152f-8bf9-45a6-b90b-813895d2f5ae.png)

4. Seller juga bisa mengubah data produk dengan menekan button edit dari produk yang ingin diubah.Lalu,isi data yang ingin diubah.

![Screenshot 2023-04-12 194056](https://user-images.githubusercontent.com/119772365/231460559-c450c743-6647-470a-91b2-5367f193273f.png)

Maka tampilan pada home seller akan kembali berubah:

![Screenshot 2023-04-12 194238](https://user-images.githubusercontent.com/119772365/231460782-c7dd6454-a462-4077-99bd-b02a7b35ee62.png)

5. Seller juga bisa menghapus produk dengan menekan button delete pada produk yang ingin dihapus.:

![Screenshot 2023-04-12 194655](https://user-images.githubusercontent.com/119772365/231461919-3b3b5cdb-7a4f-48ea-b26d-9c23c87ece7f.png)

![Screenshot 2023-04-12 194705](https://user-images.githubusercontent.com/119772365/231461929-cf03e649-c523-4dd3-becd-03f0bbee4276.png)

6. Anda bisa keluar dari akun dengan menekan button logout pada ujung kanan atas.
## *Akun*
Gatau kenapa yang file.jar nya ga kebaca databasenya.Untuk link video penggunaan bisa dilihat melalui link berikut:
https://youtu.be/QghhvGCc7d8
* Customer = Username : admin1 , Password : abc
* Seller = Username : admin2 , Password : efg
