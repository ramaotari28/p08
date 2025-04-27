// radio_state.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percobaan Menggunakan Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: true,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected = -1;
  String _jenisKelamin = ''; // <-- variabel baru untuk menampung jenis kelamin

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          width: double.infinity,
          color: Colors.blue,
          alignment: Alignment.center,
          child: SafeArea(
            child: Text(
              'Percobaan Menggunakan Widget',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Jenis Kelamin :',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                      _jenisKelamin = 'Laki-laki'; // <-- set jenis kelamin
                    });
                  },
                ),
                const Text('Laki-laki'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                      _jenisKelamin = 'Perempuan'; // <-- set jenis kelamin
                    });
                  },
                ),
                const Text('Perempuan'),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                _jenisKelamin.isEmpty
                    ? 'Belum memilih jenis kelamin'
                    : 'Jenis Kelamin yang dipilih: $_jenisKelamin',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
