// expanded.dart
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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percobaan Menggunakan Widget'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red, // Warna merah
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange, // Warna oranye
            ),
          ),
          Expanded(
            flex:2,
            child: Container(
              color: Colors.yellow, // Warna kuning
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green, // Warna hijau
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue, // Warna biru
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo, // Warna indigo
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple, // Warna ungu
            ),
          ),
        ],
      ),
    );
  }
}
