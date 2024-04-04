import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil_S3Agri_page extends StatelessWidget {
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
              'assets/LogoS3Agri.png', // Ganti dengan lokasi gambar logo Anda
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
                      image: AssetImage('assets/Gedung.jpeg'), // Ganti dengan gambar sesuai kebutuhan
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Text(
                '           Selamat datang di Program Studi Agribisnis       ',
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
                  'Jurusan Agribisnis di UPN Veteran Jawa Timur merupakan salah satu dari beberapa program studi yang berada di bawah naungan Fakultas Pertanian. Dengan didukung oleh tenaga pengajar yang berpengalaman dan fasilitas modern, kami berkomitmen untuk menyediakan pendidikan yang berkualitas tinggi di bidang agribisnis. Melalui kurikulum yang terstruktur dan beragam kegiatan pembelajaran, kami bertujuan untuk menghasilkan lulusan yang memiliki kompetensi dan keterampilan yang dibutuhkan oleh industri pertanian dan agribisnis. Selain itu, kami juga aktif dalam mengembangkan riset-riset terkini yang berkontribusi pada kemajuan sektor pertanian di tingkat lokal maupun nasional. Dengan semangat inovasi dan kolaborasi, Jurusan Agribisnis UPN Veteran Jawa Timur siap menjadi bagian dari solusi untuk meningkatkan kesejahteraan petani dan pembangunan pertanian yang berkelanjutan.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
