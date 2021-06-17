import 'package:database/pages/home_page.dart';
import 'package:database/pages/one_page.dart';
import 'package:database/pages/three_page.dart';
import 'package:database/pages/two_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Future<void> main() async {
 await  Hive.initFlutter();
 await Hive.openBox("pdp_online");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:ThreePage(),
    );
  }
}




