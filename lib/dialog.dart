// dialog.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percobaan Menggunakan Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
      debugShowCheckedModeBanner: true, // Menghilangkan banner debug
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _pilihan = '';

  void _tampilkanDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Konfirmasi'),
          content: const Text('Anda ingin keluar dari Aplikasi?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Ya'),
              onPressed: () {
                setState(() {
                  _pilihan = 'Anda memilih: Ya';
                });
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Tidak'),
              onPressed: () {
                setState(() {
                  _pilihan = 'Anda memilih: Tidak';
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Warna latar belakang AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _tampilkanDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Warna tombol biru
                foregroundColor: Colors.white, // Warna teks putih
              ),
              child: const Text('Show Dialog'),
            ),
            const SizedBox(height: 20),
            Text(_pilihan, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
