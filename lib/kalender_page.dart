import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:core';
import 'dart:async';
import 'package:intl/date_symbol_data_local.dart';

enum TimeZone { wib, wita, wit }

class KalenderPage extends StatefulWidget {
  const KalenderPage({Key? key}) : super(key: key);

  @override
  State<KalenderPage> createState() => _KalenderPageState();
}

class _KalenderPageState extends State<KalenderPage> {
  String _timeString = "";
  String _dateString = "";
  TimeZone _selectedTimeZone = TimeZone.wib;

  @override
  void initState() {
    super.initState();
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
  }

  String _getCurrentDate() {
    return DateFormat('EEEE, d MMMM y', 'id_ID').format(DateTime.now());
  }

  void _getCurrentTime() {
    if (mounted) {
      setState(() {
        _timeString = _formatDateTime(DateTime.now());
      });
    }
  }

  String _formatDateTime(DateTime dateTime) {
    switch (_selectedTimeZone) {
      case TimeZone.wib:
        return DateFormat('hh:mm:ss', 'id_ID')
            .format(dateTime.toUtc().add(Duration(hours: 7)));
      case TimeZone.wita:
        return DateFormat('hh:mm:ss', 'id_ID')
            .format(dateTime.toUtc().add(Duration(hours: 8)));
      case TimeZone.wit:
        return DateFormat('hh:mm:ss', 'id_ID')
            .format(dateTime.toUtc().add(Duration(hours: 9)));
      default:
        return DateFormat('hh:mm:ss', 'id_ID')
            .format(dateTime.toUtc().add(Duration(hours: 7)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('Kalender Page'),
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              _getCurrentDate(),
              style: TextStyle(fontSize: 48.0),
            ),
            SizedBox(height: 16.0),
            Text(
              _timeString,
              style: TextStyle(fontSize: 48.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedTimeZone = TimeZone.wib;
                    });
                  },
                  child: Text('WIB'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedTimeZone = TimeZone.wita;
                    });
                  },
                  child: Text('WITA'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedTimeZone = TimeZone.wit;
                    });
                  },
                  child: Text('WIT'),
                ),
              ],
            ),
          ],
        ));
  }
}
