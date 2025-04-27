// DatePicker.dart
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
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) {
      return '';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0), // Padding kiri-kanan dan vertikal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Menempatkan elemen di atas
          crossAxisAlignment: CrossAxisAlignment.center, // Menempatkan elemen di tengah secara horizontal
          children: [
            Text(
              'Tanggal yang dipilih: ${_formatDate(selectedDate)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Memberikan jarak antara teks dan tombol
            Center(
              child: ElevatedButton(
                onPressed: () => _selectDate(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Warna tombol biru
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  'Pilih Tanggal',
                  style: TextStyle(fontSize: 16, color: Colors.white), // Mengubah warna teks tombol menjadi putih
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
