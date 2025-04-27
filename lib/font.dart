// font.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coba Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PlayfairDisplay', // Set font default ke PlayfairDisplay
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'PlayfairDisplay'),
          bodyMedium: TextStyle(fontFamily: 'PlayfairDisplay'),
        ),
      ),
      home: const Home(title: 'Percobaan Menggunakan Widget'),
      debugShowCheckedModeBanner: true, 
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'PlayfairDisplay-Regular',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'PlayfairDisplay-Italic',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'PlayfairDisplay-Bold',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
