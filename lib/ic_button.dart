// ic_button.dart
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
  int volume = 50; // Volume default 50

  void _increaseVolume() {
    setState(() {
      if (volume < 100) volume += 10; // Tambah 10 sampai maksimal 100
    });
  }

  void _decreaseVolume() {
    setState(() {
      if (volume > 0) volume -= 10; // Kurang 10 sampai minimal 0
    });
  }

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
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Di atas
          crossAxisAlignment: CrossAxisAlignment.center, // Tengah
          children: [
            Text(
              'Volume: $volume',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.volume_down, size: 40, color: Colors.blue),
                  onPressed: _decreaseVolume,
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.volume_up, size: 40, color: Colors.blue),
                  onPressed: _increaseVolume,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
