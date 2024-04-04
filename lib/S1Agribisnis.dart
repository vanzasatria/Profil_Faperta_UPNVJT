import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Profil_S1Agri.dart'; 
import 'VisiMisi_S1Agri.dart'; 
import 'Akreditasi_S1Agri.dart'; 
import 'Ketua_S1Agri.dart'; 
import 'Dosen_S1Agri.dart'; 
import 'Prestasi_S1Agri.dart'; 

class S1AgribisnisPage extends StatelessWidget {
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
              'assets/LogoAgri.png', // Ganti dengan lokasi gambar logo Anda
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
      body: Container(
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
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _buildMenuItem(
              context,
              title: 'Profil',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil_S1Agri_page()),
                );
              },
              icon: Icons.person,
            ),
            _buildMenuItem(
              context,
              title: 'Visi & Misi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VisiMisi_S1Agri_Page()),
                );
              },
              icon: Icons.visibility,
            ),
            _buildMenuItem(
              context,
              title: 'Akreditasi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Akreditasi_S1Agri_Page()),
                );
              },
              icon: Icons.star,
            ),
            _buildMenuItem(
              context,
              title: 'Ketua Program Studi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ketua_S1Agri_Page()),
                );
              },
              icon: Icons.person_outline,
            ),
            _buildMenuItem(
              context,
              title: 'Daftar Dosen',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dosen_S1Agri_Page()),
                );
              },
              icon: Icons.people,
            ),
            _buildMenuItem(
              context,
              title: 'Laman Website',
              onTap: () async {
                const url = 'https://agribis.upnjatim.ac.id/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: Icons.web,
            ),
            _buildMenuItem(
              context,
              title: 'Prestasi Mahasiswa',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Prestasi_S1Agri_Page()),
                );
              },
              icon: Icons.star_border,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, {required String title, required VoidCallback onTap, required IconData icon}) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      hoverColor: const Color.fromARGB(255, 255, 255, 255), // Warna saat menu dihover
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color.fromARGB(255, 98, 98, 98)), // Menambahkan garis bawah
          ),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black87), // Menyesuaikan warna ikon
            SizedBox(width: 16.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 14, // Mengurangi ukuran teks
                color: Colors.black87, // Menggunakan warna hitam
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}
