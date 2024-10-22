import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.teal, // Ubah warna
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Tambahkan padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About This App',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5, // Tambahkan bayangan
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi Aplikasi',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Aplikasi ini adalah contoh aplikasi Flutter yang dibuat untuk ujian tengah semester Mata Kuliah Pemrograman Mobile. '
                      'Aplikasi ini menunjukkan teknik navigasi dasar, pengolahan form, dan tata letak responsif di Flutter. '
                      'Aplikasi ini memiliki fitur seperti autentikasi pengguna, pengelolaan profil, dan navigasi layar multiple.',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5, // Tambahkan bayangan
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Aplikasi',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.info), // Tambahkan icon
                        const SizedBox(width: 10),
                        Text(
                          'Versi: 1.0.0',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.person), // Tambahkan icon
                        const SizedBox(width: 10),
                        Text(
                          'Pengembang: Mahasiswa',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.school), // Tambahkan icon
                        const SizedBox(width: 10),
                        Text(
                          'Mata Kuliah: Pemrograman Mobile',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
