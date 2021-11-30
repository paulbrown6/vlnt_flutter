import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vlnt_flutter/pages/auth_page.dart';
import 'package:vlnt_flutter/pages/incident_page.dart';
import 'package:vlnt_flutter/pages/news_page.dart';
import 'package:vlnt_flutter/pages/profile_page.dart';
import 'package:vlnt_flutter/pages/start_page.dart';
import 'package:vlnt_flutter/pages/work_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => StartPage(),
        '/auth': (context) => AuthPage(),
        '/profile': (context) => ProfilePage(),
        '/news': (context) => NewsPage(),
        '/work': (context) => WorkPage(),
        '/incident': (context) => IncidentPage(),
      },
    );
  }
}
