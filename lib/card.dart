// card.dart
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
  // Daftar item yang ditampilkan dalam list
  List<String> items = List.generate(12, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percobaan Menggunakan Widget'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: items.length, // Item yang ditampilkan dalam list
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.amber,
              ),
              title: Text(items[index]), // Menampilkan nama item
              onTap: () {
                // Ketika item dipilih, tampilkan di console
                print('anda memilih ${items[index]}');
              },
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  // Menghapus item saat tombol delete ditekan
                  setState(() {
                    print('Item ${items[index]} dihapus');
                    items.removeAt(index); // Menghapus item
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
