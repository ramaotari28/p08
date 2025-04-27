// font_evaluasi.dart
import 'package:flutter/material.dart';

void main() {
  runApp(VisiMisiApp());
}

class VisiMisiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Visi dan Misi',
            style: TextStyle(
              fontFamily: 'JosefinSans',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          elevation: 4,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Visi',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Prodi D4 Rekayasa Perangkat Lunak yang telah ditetapkan oleh Direktur Politeknik Negeri Bengkalis melalui surat keputusan No. 2061/PL31/TU/2016 adalah',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '“Menjadi Program Studi vokasi yang menghasilkan lulusan bidang rekayasa perangkat lunak berstandar Nasional dan menuju reputasi Internasional pada tahun 2020”.',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Misi',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Misi Program Studi Sarjana Terapan Rekayasa Perangkat Lunak adalah:',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '''1. Menyelenggarakan pendidikan dan meningkatkan kemampuan mahasiswa dalam menerapkan Ilmu Pengetahuan dan Teknologi Rekayasa Perangkat Lunak bidang Rekayasa web dan Aplikasi mobile untuk meningkatkan daya saing yang tinggi.
                  
2. Menciptakan, mengembangkan dan menerapkan ilmu pengetahuan dan teknologi untuk menghasilkan produk unggulan rekayasa perangkat lunak.

3. Meningkatkan pemanfaatan teknologi informasi dalam mengatasi permasalahan-permasalahan di lingkungan internal maupun lingkungan eksternal (industri, pemerintah dan masyarakat umum).

4. Melaksanakan dan mengembangkan desain dan jejaring kerjasama bidang rekayasa perangkat lunak yang berkelanjutan dengan institusi dalam dan luar negeri.''',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}