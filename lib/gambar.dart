// gambar.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coba Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: true,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // List nama file gambar
  final List<String> imagePaths = const [
    'assets/images/fb.png',
    'assets/images/gp.png',
    'assets/images/ig.png',
    'assets/images/link.png',
    'assets/images/snap.png',
    'assets/images/spoti.png',
    'assets/images/tiktok.png',
    'assets/images/wa.png',
    'assets/images/yt.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sosial Media Icons'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Memberikan warna biru penuh pada AppBar
      ),
      body: GridView.count(
        crossAxisCount: 4, // Tetap 3 kolom, tapi gambar lebih kecil
        crossAxisSpacing: 1, // Jarak antar kolom lebih kecil
        mainAxisSpacing: 1,  // Jarak antar baris lebih kecil
        padding: const EdgeInsets.all(2.0), // Padding lebih kecil
        children: List.generate(imagePaths.length, (index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(4), // Membulatkan sudut lebih kecil
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.contain, // Mengubah agar gambar tetap terjaga proporsinya tanpa melebihi batas
            ),
          );
        }),
      ),
    );
  }
}
