import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/WidgetDoPaulo.dart';

import 'MyHomePage1.dart';
import 'MyHomePage2.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo xxx',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/first',
      routes: {
        '/first': (context) =>  new MyHomePage1(title: "111111111 First"),
        '/second': (context) => new MyHomePage2(title: '222222222 Seconbd')},

    );
  }
}