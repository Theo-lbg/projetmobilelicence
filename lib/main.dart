import 'package:flutter/material.dart';
import 'package:projetmobilelicence/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API FILMS LEBEGUE THEO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Our first APP"),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => const MyHomePage(
              title: 'Our first APP',
            ),
        '/route2': (BuildContext context) => const MyHomePage(
              title: 'Our first APP',
            ),
      },
    );
  }
}
