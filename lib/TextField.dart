// TextField.dart
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
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();
  String _nama = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          color: Colors.blue[700],
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Text(
                'Percobaan Menggunakan Widget',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              onChanged: (String value) {
                setState(() {});
              },
              decoration: InputDecoration(
                labelText: 'Nama Anda',
                hintText: 'Masukkan Nama',
                hintStyle: TextStyle(fontStyle: FontStyle.normal),
                icon: Icon(Icons.person_pin),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text('Submit'),
              onPressed: () {
                setState(() {
                  _nama = _controller.text;
                });

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Hasil Input'),
                      content: Text('Halo, apa kabar $_nama?'),
                      actions: [
                        TextButton(
                          child: Text('Tutup'),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20),
            if (_nama.isNotEmpty)
              Text(
                'Halo $_nama!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
          ],
        ),
      ),
    );
  }
}
