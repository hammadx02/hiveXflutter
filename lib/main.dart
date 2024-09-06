import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivexflutter/home_page.dart';

void main() async {
  // init hive
  await Hive.initFlutter();
  // data is stored in box
  var box = await Hive.box('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive X Flutter',
      home: HomePage(),
    );
  }
}
