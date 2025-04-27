// dropD_button.dart
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
  // Daftar kecamatan
  final List<String> kecamatanList = [
    'Bengkalis', 'Bantan', 'Siak Kecil', 'Eupat', 'Rupat Utara', 'Bukit Batu'
  ];

  String? selectedKecamatan; // Menyimpan kecamatan yang dipilih

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
          crossAxisAlignment: CrossAxisAlignment.center, // Menempatkan elemen di tengah horizontal
          children: [
            // Menambahkan teks "Pilih Kecamatan"
            Text(
              'Pilih Kecamatan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Memberikan jarak antara teks dan dropdown

            // DropdownButton untuk memilih kecamatan
            Container(
              width: 250, // Lebar dropdown yang lebih kecil
              child: DropdownButton<String>(
                value: selectedKecamatan,
                hint: Text('Pilih Kecamatan'),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedKecamatan = newValue;
                  });
                },
                isExpanded: true, // Membuat dropdown mengisi seluruh lebar container
                items: kecamatanList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(value, style: TextStyle(fontSize: 16)),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
