import 'package:flutter/material.dart'; // Mengimpor library Flutter yang diperlukan

void main() {
  runApp(MyApp()); // Fungsi main untuk menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  // Kelas MyApp yang merupakan turunan dari StatelessWidget
  @override
  Widget build(BuildContext context) {
    // Override method build untuk membuat widget
    return MaterialApp(
      title: 'Profil dan Biodata', // Judul aplikasi
      home: ProfilePage(), // Beranda aplikasi adalah ProfilePage
    );
  }
}

class ProfilePage extends StatelessWidget {
  // Kelas ProfilePage yang merupakan turunan dari StatelessWidget
  @override
  Widget build(BuildContext context) {
    // Override method build untuk membuat widget
    return Scaffold(
      // Scaffold untuk menyusun tampilan aplikasi
      appBar: AppBar(
        // AppBar sebagai bagian atas aplikasi
        title: Text('Profil dan Biodata Rindi'), // Judul AppBar
        backgroundColor: Colors.green, // Warna latar belakang AppBar
      ),
      body: Center(
        // Widget untuk menampilkan konten di tengah layar
        child: Column(
          // Widget Column untuk menata konten dalam kolom
          mainAxisAlignment: MainAxisAlignment
              .center, // Menyusun konten secara vertikal di tengah layar
          children: <Widget>[
            // Daftar widget yang ditampilkan dalam kolom
            CircleAvatar(
              // Widget untuk menampilkan gambar profil dalam bentuk lingkaran
              radius: 80, // Radius gambar profil
              backgroundImage:
                  AssetImage('images/rindi_images.jpg'), // Gambar profil
            ),
            SizedBox(height: 20), // Widget untuk memberikan jarak vertikal
            Text(
              // Widget untuk menampilkan nama lengkap
              'Nama Lengkap: Rindi Devi', // Teks nama lengkap
              style: TextStyle(fontSize: 20), // Gaya teks
            ),
            Text(
              // Widget untuk menampilkan tempat dan tanggal lahir
              'Tempat dan Tanggal Lahir: Ponorogo, 12 Agustus 2003', // Teks tempat dan tanggal lahir
              style: TextStyle(fontSize: 20), // Gaya teks
            ),
            Text(
              // Widget untuk menampilkan email
              'Email: rindidevi689@gmail.com', // Teks email
              style: TextStyle(fontSize: 20), // Gaya teks
            ),
            Text(
              // Widget untuk menampilkan nomor HP
              'Nomor HP: +6282283447725', // Teks nomor HP
              style: TextStyle(fontSize: 20), // Gaya teks
            ),
            Text(
              // Widget untuk menampilkan hobi
              'Hobi: Membaca, Bernyanyi, Menulis, dan Jalan-jalan', // Teks hobi
              style: TextStyle(fontSize: 20), // Gaya teks
            ),
          ],
        ),
      ),
    );
  }
}
