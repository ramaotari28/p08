// Query2.dart
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
      home: Home(title: 'Judul Dinamis'), // Menggunakan title
      debugShowCheckedModeBanner: false,
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue,
      body: Row(
        children: [
          Expanded(
            flex: 1, // bagian kecil di kiri
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  color: Colors.blueGrey.shade700,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'LayoutBuilder: ${constraints.maxWidth.toStringAsFixed(0)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3, // bagian besar di kanan
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: Colors.blueGrey.shade700,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'LayoutBuilder: ${constraints.maxWidth.toStringAsFixed(0)}',
                          style: TextStyle(
                            color: Colors.blueGrey.shade700,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}