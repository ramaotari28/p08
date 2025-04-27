// chekboxTile.dart
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
          ? 'Data : ${selected.join(', ')}'
          : 'Tidak ada bahasa yang dipilih.';
    });

    print(selectedLanguagesText);
  }

  Widget _buildCheckboxTile(String title, bool value, Function(bool?) onChanged) {
    return CheckboxListTile(
      title: Text(title),
      value: value,
      onChanged: (bool? newValue) {
        onChanged(newValue);
        _printSelectedLanguages();
      },
      secondary: Icon(Icons.language),
      controlAffinity: ListTileControlAffinity.trailing,
    );
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
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              'Bahasa pemrograman yang dikuasai:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildCheckboxTile('Python', _checkboxVal1, (val) {
              setState(() => _checkboxVal1 = val!);
            }),
            _buildCheckboxTile('JavaScript', _checkboxVal2, (val) {
              setState(() => _checkboxVal2 = val!);
            }),
            _buildCheckboxTile('PHP', _checkboxVal3, (val) {
              setState(() => _checkboxVal3 = val!);
            }),
            _buildCheckboxTile('Java', _checkboxVal4, (val) {
              setState(() => _checkboxVal4 = val!);
            }),
            _buildCheckboxTile('C++', _checkboxVal5, (val) {
              setState(() => _checkboxVal5 = val!);
            }),
            _buildCheckboxTile('Dart', _checkboxVal6, (val) {
              setState(() => _checkboxVal6 = val!);
            }),
            SizedBox(height: 20),
            Center(
              child: Text(
                selectedLanguagesText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
