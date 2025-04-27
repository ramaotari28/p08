// swithc_t.dart

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
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> settings = ['Data Seluler', 'Mode Pesawat', 'WiFi'];
  final List<bool> settingValues = [false, false, false];

  final List<IconData> settingIcons = [
    Icons.network_cell,
    Icons.airplanemode_active,
    Icons.wifi,
  ];

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
        child: ListView.builder(
          itemCount: settings.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SwitchListTile(
                value: settingValues[index],
                onChanged: (bool value) {
                  setState(() {
                    settingValues[index] = value;
                  });
                  print(settingValues);
                },
                title: Text(
                  settings[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                secondary: CircleAvatar(
                  backgroundColor: Colors.blue[50],
                  child: Icon(
                    settingIcons[index],
                    color: Colors.blue,
                  ),
                ),
                activeColor: Colors.green,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              ),
            );
          },
        ),
      ),
    );
  }
}
