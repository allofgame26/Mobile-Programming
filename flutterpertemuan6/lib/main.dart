import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisikan titleSection di dalam metode build
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
          32.0), // Padding di setiap sisi sebesar 32 piksel
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Warna Teks
                    fontSize: 20.0, // Ukuran teks
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star, // Ikon bintang
            color: Colors.red, // Warna ikon merah
          ),
          const SizedBox(width: 4), // Jarak antara ikon dan teks
          const Text('41'), // Teks "41"
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout : Rizki Arya Prayoga 2141762051',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: Center(
          child: titleSection, // Gunakan titleSection di sini
        ),
      ),
    );
  }
}
