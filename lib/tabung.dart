import 'package:flutter/material.dart';

class Tabung extends StatefulWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  State<Tabung> createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  final TextEditingController _rLuasController = TextEditingController();
  final TextEditingController _tLuasController = TextEditingController();

  final TextEditingController _rVolumeController = TextEditingController();
  final TextEditingController _tVolumeController = TextEditingController();

  double rLuas = 0, tLuas = 0;
  double rVolume = 0, tVolume = 0;
  double luas = 0, volume = 0;

  void hitungVolume() {
    setState(() {
      rVolume = double.parse(_rVolumeController.text);
      tVolume = double.parse(_tVolumeController.text);

      volume = 3.14 * rVolume * rVolume * tVolume;
    });
  }

  void hitungLuas() {
    setState(() {
      rLuas = double.parse(_rLuasController.text);
      tLuas = double.parse(_tLuasController.text);

      luas = 2 * 3.14 * rLuas * (rLuas + tLuas);
    });
  }

  void clearLuas() {
    setState(() {
      rLuas = 0;
      tLuas = 0;
      luas = 0;

      _rLuasController.clear();
      _tLuasController.clear();
    });
  }

  void clearVolume() {
    setState(() {
      rVolume = 0;
      tVolume = 0;
      volume = 0;

      _rVolumeController.clear();
      _tVolumeController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Hitung Tabung'),
      )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[_luasPermukaanTabung(), _volumeTabung()],
        ),
      ),
    );
  }

  _volumeTabung(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          'Volume Tabung',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Jari Jari Tabung'),
          controller: _rVolumeController,
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'TInggi Tabung'),
          controller: _tVolumeController,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Volume'),
              onPressed: hitungVolume,
            ),
            ElevatedButton(
              child: Text('Clear', style: TextStyle(color: Colors.black)),
              onPressed: clearVolume,
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Background color
              ),
            ),
          ],
        ),
        SizedBox(height: 12.0),
        Text('Volume: $volume'),
      ]),
    );
  }

  _luasPermukaanTabung(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          'Luas Permukaan Tabung',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Jari Jari Tabung'),
          controller: _rLuasController,
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Tinggi Tabung'),
          controller: _tLuasController,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Luas Permukaan'),
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
}
