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

# Fungsi dari `setState()` dan variabel yang dapat terdampak dengan fungsi
`setState()` adalah metode di `StatefulWidget` yang memberikan informasi bahwa ada perubahan pada state, sehingga tampilan harus diperbarui. Ketika `setState()` dipanggil, Flutter akan merender ulang widget sesuai dengan perubahan yang terjadi.

Variabel yang terdampak oleh `setState()` adalah variabel yang disimpan dalam State dari `StatefulWidget`. Namun, pada proyek ini yang digunakan hanya `StatelessWidget` sehingga `setState()` tidak digunakan.

# Perbedaan antara `const` dengan `final`
Baik `const` maupun `final` tidak bisa berubah nilainya setelah didefinisikan. Perbedaannya adalah waktu penetapan nilainya. `const` menetapkan nilai pada saat compile-time, sehingga nilainya harus benar-benar tetap dan tidak bisa dipengaruhi kondisi runtime. Contoh penggunaan `const` adalah untuk angka seperti `const pi = 3.14`. `final` menetapkan nilai saat run-time, hanya satu kali saat eksekusi dan aplikasi berjalan. Contoh penggunaan `final` adalah `final currentTime = DateTime.now()`, `currentTime` baru ditentukan ketika program dijalankan.

# Implementasi checklist
1. **Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya**: Program Flutter dibuat dengan menjalankan pada terminal, `flutter create words_of_affirmachine`
2. **Membuat tiga tombol sederhana dengan ikon dan teks**: Di `menu.dart`, dibuat class `ItemHomepage` yang menyimpan properti `name`, `icon`, dan `color`. Tombol ini ditampikan dengan GridView sehingga berupa tiga kolom
3. **Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout)**: Pada class `ItemHomepage` ditambahkan properti `color: item.color`. Color secara spesifik ditentukan saat inisiasi instance
4. **Memunculkan Snackbar dengan tulisan ketika tombol ditekan**: Di dalam ItemCard terdapat widget `InkWell`, yang diarahkan untuk menampilkan `SnackBar` berbeda sesuai dengan tombol yang ditekan