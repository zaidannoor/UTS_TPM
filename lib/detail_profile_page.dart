import 'package:flutter/material.dart';

class DetailProfilePage extends StatelessWidget {
  const DetailProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/self-picture.jpeg',
              width: 150,
              fit: BoxFit.cover,
            ),
            Text("Zaidan Noor Irfan", style: TextStyle(fontSize: 20)),
            Text("123200066", style: TextStyle(fontSize: 20)),
            Text("Bantul, 9 Januari 2003", style: TextStyle(fontSize: 20)),
            Text("IF-C", style: TextStyle(fontSize: 20)),
            Text("Semoga Mendapatkan Nilai A pada Matakuliah TPM",
                style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
            SizedBox(height: 12),
            Text(
                "Bercita-cita menjadi software engineer yang memberikan solusi melalui aplikasi berbasis web",
                style: TextStyle(fontSize: 18), textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
