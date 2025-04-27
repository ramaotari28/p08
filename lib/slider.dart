// slider.dart
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
  double _sliderValue = 0;

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start, // <-- ini yang dirubah!
          children: [
            SizedBox(height: 30), // kasih jarak dari atas
            Text(
              'Nilai aktif: ${_sliderValue.toInt()}',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: _sliderValue,
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.toInt().toString(),
              activeColor: Colors.blue,
              inactiveColor: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }
}
