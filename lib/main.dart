import 'package:flutter/material.dart';
import './login_page.dart';
import './home_page.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async{
  await initializeDateFormatting();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS TPM',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
      routes: {
        '/login': (BuildContext context) => LoginPage(),
        '/home': (BuildContext context) => HomePage(),
      },
    );
  }
}
