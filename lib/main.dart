import 'package:database/pages/four_page.dart';
import 'package:database/pages/home_page.dart';
import 'package:database/pages/one_page.dart';
import 'package:database/pages/three_page.dart';
import 'package:database/pages/two_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  var box = await Hive.openBox('pdp_online');
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
      home:OnePage(),
      routes: {
        OnePage.id:(context)=>OnePage(),
        TwoPage.id:(context)=>TwoPage(),
        ThreePage.id:(context)=>ThreePage(),
        FourPage.id:(context)=>FourPage(),
      },
    );
  }
}




