import 'package:flutter/material.dart';
import 'package:projetmobilelicence/SplashScreen.dart';
import 'package:projetmobilelicence/pages/Favoris.dart';
import 'package:projetmobilelicence/pages/Film.dart';
import 'package:projetmobilelicence/pages/accueil.dart';
import 'package:projetmobilelicence/pages/DetailFilm.dart';
import 'package:projetmobilelicence/PagesRecherches//Rechercher.dart';
import 'package:projetmobilelicence/PagesRecherches//ResuRechercher.dart';




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
      home: const accueil(title: "Our first APP"),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => const accueil(
              title: 'Our first APP',
            ),
        '/route2': (BuildContext context) => const DetailFilm(),
        '/route3': (BuildContext context) => const SplashScreen(),
        '/route4': (BuildContext context) => const Favoris(),
        '/route5': (BuildContext context) => const Film(),
        '/route6': (BuildContext context) => const Rechercher(),
        '/route7': (BuildContext context) => const ResuRechercher(),

      },
    );
  }
}
