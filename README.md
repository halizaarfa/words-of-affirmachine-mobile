# Word of Affir-MACHINE - Mobile Version
WML on this :D

---

# Tugas 7: Elemen Dasar Flutter
## Apa yang dimaksud dengan stateless widget dan stateful widget serta perbedaan dari keduanya
`StatelessWidget` bersifat statis, yakni tampilannya tidak akan berubah setelah pertama kali ditampilkan. Misalnya, tombol atau teks yang selalu ada. Artinya, widget ini bersifat immutable.

`StatefulWidget` dapat berubah atau mutable. Perubahan dapat terjadi karena interaksi dari user ataupun real-time data update. Beberapa contohnya adalah checkbox, radio button, ataupun form input. 

For short, perbedaan utamanya adalah `StatelessWidget` bersifat statis, sedangkan `StatefulWidget` bersifat dinamis.

## Widget yang digunakan pada proyek ini dan fungsinya
- MaterialApp: Root dari app, mengatur tema dan setting secara global
- MyHomePage: Laman utama dari app, berupa StatelessWidget yang menampilkan interface utama
- Scaffold: Struktur dasar dari halaman, memiliki elemen seperti AppBar, body, dan lainnya
- AppBar: Bagian dari Scaffold yang menampilkan judul app di bagian atas halaman
- Column: Widget untuk menyusun elemen secara vertikal
- Row: Widget untuk menyusun elemen secara horizontal
- InfoCard: Menampilkan NPM, nama, dan kelas, disusun dengan Card widget
- Gridview: Mengatur elemen ItemCard sesuai dengan layout grid
- Card: Digunakan pada InfoCard, untuk menampilkan setiap kotak
- ItemCard: Menampilkan tombol dengan icon serta text dengan warna yang berbeda-beda, yakni tombol Lihat Daftar Produk, Tambah Produk, dan Logout
- InkWell: Mengatur interaksi pada ItemCard sehingga jika ditekan, SnackBar akan muncul
- SnackBar: Menampilkan pesan yang bersifat sementara di bagian bawah layar, dalam hal ini menginformasikan kalau tombol ditekan

## Fungsi dari `setState()` dan variabel yang dapat terdampak dengan fungsi
`setState()` adalah metode di `StatefulWidget` yang memberikan informasi bahwa ada perubahan pada state, sehingga tampilan harus diperbarui. Ketika `setState()` dipanggil, Flutter akan merender ulang widget sesuai dengan perubahan yang terjadi.

Variabel yang terdampak oleh `setState()` adalah variabel yang disimpan dalam State dari `StatefulWidget`. Namun, pada proyek ini yang digunakan hanya `StatelessWidget` sehingga `setState()` tidak digunakan.

## Perbedaan antara `const` dengan `final`
Baik `const` maupun `final` tidak bisa berubah nilainya setelah didefinisikan. Perbedaannya adalah waktu penetapan nilainya. `const` menetapkan nilai pada saat compile-time, sehingga nilainya harus benar-benar tetap dan tidak bisa dipengaruhi kondisi runtime. Contoh penggunaan `const` adalah untuk angka seperti `const pi = 3.14`. `final` menetapkan nilai saat run-time, hanya satu kali saat eksekusi dan aplikasi berjalan. Contoh penggunaan `final` adalah `final currentTime = DateTime.now()`, `currentTime` baru ditentukan ketika program dijalankan.

## Implementasi checklist
1. **Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya**: Program Flutter dibuat dengan menjalankan pada terminal, `flutter create words_of_affirmachine`
2. **Membuat tiga tombol sederhana dengan ikon dan teks**: Di `menu.dart`, dibuat class `ItemHomepage` yang menyimpan properti `name`, `icon`, dan `color`. Tombol ini ditampikan dengan GridView sehingga berupa tiga kolom
3. **Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout)**: Pada class `ItemHomepage` ditambahkan properti `color: item.color`. Color secara spesifik ditentukan saat inisiasi instance
4. **Memunculkan Snackbar dengan tulisan ketika tombol ditekan**: Di dalam ItemCard terdapat widget `InkWell`, yang diarahkan untuk menampilkan `SnackBar` berbeda sesuai dengan tombol yang ditekan

---

# Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
## Kegunaan `const` pada Flutter, keuntungan, serta kapan sebaiknya digunakan atau tidak
`const` digunakan untuk mendefinisikan suatu objek atau widget yang sifatnya statis, tidak berubah selama aplikasi dijalankan. Keuntungan penggunaannya adalah, Flutter bisa mengenali bagian apa saja yang tidak perlu dilakukan _build_ ulang ketika tampilan berubah.

Sebaiknya, `const` digunakan untuk nilai atau tampilan widget yang dipastikan tidak akan berubah, misalnya teks atau icon statis. Sebaliknya, `const` tidak cocok untuk variabel yang berubah seiring adanya interaksi dari user.

## Perbedaan `Column` dan `Row` pada Flutter
Keduanya sama-sama widget layout yang membantu menyusun widget-widget di dalamnya, disebut dengan widget _child_. `Column` menyusun _child_ secara vertikal, yakni dari atas ke bawah. Sementara itu, `Row` menyusun _child_ secara horizontal, yakni dari kiri ke kanan. Suatu widget `Column` bisa saja berisi beberapa widget `Row`, begitu pula sebaliknya.

## Elemen input yang digunakan pada form, serta elemen input lain yang tidak digunakan
Yang saya gunakan pada form untuk tugas ini adalah `TextFormField` untuk memasukkan nama, jumlah produk, dan deskripsi, serta `Slider` untuk jumlah stars. Selain kedua elemen input tersebut, ada elemen input lain pada Flutter seperti `Checkbox`, `Radio`, `Switch`, `DropdownButton`, dan `DateTimePicker`. 
- `Checkbox`: select atau deselect suatu opsi
- `Radio`: memilih satu dari opsi-opsi yang mutually exclusive 
- `Switch`: alternatif untuk checkbox, tampilannya berupa toggle
- `DropdownButton`: menampilkan opsi berupa dropdown untuk dipilih salah satunya oleh user
- `DateTimePicker`: memilih tanggal atau jam

## Pengaturan tema di Flutter agar aplikasi konsisten
Tema didefinisikan di `MaterialApp` yang terdapat pada file `main.dart`. Pada app ini, `ThemeData` digunakan untuk menyesuaikan warna-warna seperti primary dan secondary color sehingga tidak perlu disetting secara manual pada masing-masing widget.

## Penanganan navigasi dalam aplikasi yang halamannya banyak pada Flutter
Flutter menggunakan `Navigator` untuk berpindah antarhalaman. Contoh pada tugas ini adalah berpindah dari Homepage ke halaman Add Product. Sistem yang digunakan `Navigator` berupa suatu stack. `Navigator.push` menambahkan halaman ke stack, kemudian `Navigator.pop` akan menghapus halaman tersebut dan kembali ke halaman sebelumnya. Navigasi dilakukan dengan `onTap` sehingga respons akan dilakukan ketika tombol diklik.