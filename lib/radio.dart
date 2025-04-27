// radio.dart
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // Tinggi AppBar
        child: Container(
          width: double.infinity, // <<=== ini yang bikin penuh
          color: Colors.blue, // warna biru
          alignment: Alignment.center, // teks ditengah
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
                    });
                  },
                ),
                const Text('Perempuan'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
