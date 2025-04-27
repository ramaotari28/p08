// chekbox.dart
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
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _checkboxVal1 = false;
  bool _checkboxVal2 = false;
  bool _checkboxVal3 = false;
  bool _checkboxVal4 = false;
  bool _checkboxVal5 = false;
  bool _checkboxVal6 = false;

  String selectedLanguagesText = '';

  void _printSelectedLanguages() {
    List<String> selected = [];

    if (_checkboxVal1) selected.add('Python');
    if (_checkboxVal2) selected.add('JavaScript');
    if (_checkboxVal3) selected.add('PHP');
    if (_checkboxVal4) selected.add('Java');
    if (_checkboxVal5) selected.add('C++');
    if (_checkboxVal6) selected.add('Dart');

    setState(() {
      selectedLanguagesText = selected.isNotEmpty
          ? 'Bahasa yang dipilih: ${selected.join(', ')}'
          : 'Tidak ada bahasa yang dipilih.';
    });

    print(selectedLanguagesText);
  }

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 24),
            Text(
              'Bahasa pemrograman yang dikuasai:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal1,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal1 = value!;
                      _printSelectedLanguages();
                    });
                  },
                ),
                Text('Python'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal2,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal2 = value!;
                      _printSelectedLanguages();
                    });
                  },
                ),
                Text('JavaScript'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal3,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal3 = value!;
                      _printSelectedLanguages();
                    });
                  },
                ),
                Text('PHP'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal4,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal4 = value!;
                      _printSelectedLanguages();
                    });
                  },
                ),
                Text('Java'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal5,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal5 = value!;
                      _printSelectedLanguages();
                    });
                  },
                ),
                Text('C++'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal6,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal6 = value!;
                      _printSelectedLanguages();
                    });
                  },
                ),
                Text('Dart'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              selectedLanguagesText,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
