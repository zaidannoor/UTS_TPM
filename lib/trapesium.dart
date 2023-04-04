import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  final TextEditingController _sisiSejajar1Controller = TextEditingController();
  final TextEditingController _sisiSejajar2Controller = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();

  final TextEditingController _sisi1Controller = TextEditingController();
  final TextEditingController _sisi2Controller = TextEditingController();
  final TextEditingController _sisi3Controller = TextEditingController();
  final TextEditingController _sisi4Controller = TextEditingController();

  double sisiSejajar1 = 0, sisiSejajar2 = 0, tinggi = 0;
  double sisi1 = 0, sisi2 = 0, sisi3 = 0, sisi4 = 0;
  double keliling = 0, luas = 0;

  void hitungKeliling() {
    setState(() {
      sisi1 = double.parse(_sisi1Controller.text);
      sisi2 = double.parse(_sisi2Controller.text);
      sisi3 = double.parse(_sisi3Controller.text);
      sisi4 = double.parse(_sisi4Controller.text);
      keliling = sisi1 + sisi2 + sisi3 + sisi4;
    });
  }

  void hitungLuas() {
    setState(() {
      sisiSejajar1 = double.parse(_sisiSejajar1Controller.text);
      sisiSejajar2 = double.parse(_sisiSejajar2Controller.text);
      tinggi = double.parse(_tinggiController.text);
      luas = 0.5 * (sisiSejajar1 + sisiSejajar2) * tinggi;
    });
  }

  void clearLuas() {
    setState(() {
      sisiSejajar1 = 0;
      sisiSejajar2 = 0;
      tinggi = 0;
      luas = 0;
      _sisiSejajar1Controller.clear();
      _sisiSejajar2Controller.clear();
      _tinggiController.clear();
    });
  }

  void clearKeliling() {
    setState(() {
      sisi1 = 0;
      sisi2 = 0;
      sisi3 = 0;
      sisi4 = 0;
      keliling = 0;
      _sisi1Controller.clear();
      _sisi2Controller.clear();
      _sisi3Controller.clear();
      _sisi4Controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Hitung Trapesium'),
      )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              _luasTrapesium(),
              _kelilingTrapesium()
              ],
        ),
      ),
    );
  }

  _luasTrapesium(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          'Luas Trapesium',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Sisi Sejajar 1'),
          controller: _sisiSejajar1Controller,
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Sisi Sejajar 2'),
          controller: _sisiSejajar2Controller,
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Tinggi'),
          controller: _tinggiController,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Luas'),
              onPressed: hitungLuas,
            ),
            ElevatedButton(
              child: Text('Clear', style: TextStyle(color: Colors.black)),
              onPressed: clearLuas,
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Background color
              ),
            ),
          ],
        ),
        SizedBox(height: 12.0),
        Text('Luas: $luas'),
      ]),
    );
  }

  _kelilingTrapesium(){
     return Container(
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(children: [
        Text(
          'Keliling Trapesium',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: _sisi1Controller,
          decoration: InputDecoration(hintText: 'Sisi 1'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _sisi2Controller,
          decoration: InputDecoration(hintText: 'Sisi 2'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _sisi3Controller,
          decoration: InputDecoration(hintText: 'Sisi 3'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _sisi4Controller,
          decoration: InputDecoration(hintText: 'Sisi 4'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Keliling'),
              onPressed: hitungKeliling,
            ),
            ElevatedButton(
              child: Text('Clear', style: TextStyle(color: Colors.black)),
              onPressed: clearKeliling,
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Background color
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Text('Keliling: $keliling'),
      ]),
    );
  }
}
