import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil_S2Agro_page extends StatelessWidget {
  void _sendEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false, // Tidak mengatur judul ke tengah
        title: Row(
          children: [
            Image.asset(
              'assets/LogoS2Agro.png', // Ganti dengan lokasi gambar logo Anda
              width: 200, // Sesuaikan lebar gambar sesuai kebutuhan
              height: 200, // Sesuaikan tinggi gambar sesuai kebutuhan
            ),
            SizedBox(width: 10), // Jarak antara gambar dan teks judul
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () {
              _sendEmail('agribisnis@upnjatim.ac.id');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0), // Tambahkan padding di bagian atas
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 253, 252, 252),
                  Color.fromARGB(255, 198, 225, 194)
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/GedungAgro.jpeg'), // Ganti dengan gambar sesuai kebutuhan
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Text(
                  '    Selamat datang di Program Studi Magister Agroteknologi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                Text(
                  '                    UPN "Veteran" Jawa Timur!                 ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0), // Tambahkan padding di kanan dan kiri
                  child: Text(
                    'Program Magister Agroteknologi Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 2017, dengan ijin operasi pendirian Program Studi Magister Agroteknologi nomor 224/KPT/I/2017. Pada tahun 2020 PS Magister Agroteknologi dengan 9 standar penialaian terakreditasi Baik dari BAN-PT Nomor : 7065/SK/BAN-PT/Akred/M/XI/2020.',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 60.0), // Tambahkan SizedBox untuk memberikan padding di bagian bawah teks deskripsi
              ],
            ),
          ),
        ),
      ),
    );
  }
}
