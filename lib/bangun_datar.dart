import 'package:flutter/material.dart';
import './tabung.dart';
import './trapesium.dart';

class BangunDatarPage extends StatefulWidget {
  const BangunDatarPage({ Key? key }) : super(key: key);

  @override
  State<BangunDatarPage> createState() => _BangunDatarPageState();
}

class _BangunDatarPageState extends State<BangunDatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Hitung Bangun Datar'),
        )
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("List Submenu",
              style: TextStyle(fontSize: 32)),
              SizedBox(height: 24.0),
              InkWell(
                child: Text(
                  'Hitung Trapesium',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Trapesium()));
                },
              ),
              SizedBox(height: 10.0),
              InkWell(
                child: Text(
                  'Hitung Tabung',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tabung()));
                },
              ),
          ],
        ),
        )
        
      )
    );
  }
}