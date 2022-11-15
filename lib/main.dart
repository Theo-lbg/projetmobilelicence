import 'package:flutter/material.dart';
import 'package:projetmobilelicence/View/pages/Favoris.dart';
import 'package:projetmobilelicence/View/pages/Film_view.dart';
import 'package:projetmobilelicence/View/pages/accueil.dart';
import 'package:projetmobilelicence/View/pages/DetailFilm.dart';
import 'package:projetmobilelicence/View/PagesRecherches/Rechercher.dart';
import 'package:projetmobilelicence/View/PagesRecherches/ResuRechercher.dart';
import 'package:projetmobilelicence/View/pages/cinema.dart';

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
      home: const accueil(title: "Notre première application"),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => const accueil(
              title: 'Notre première Application',
            ),
        '/route2': (BuildContext context) => const DetailFilm(),
        '/route4': (BuildContext context) => const Favoris(),
        '/route5': (BuildContext context) => const Film(),
        '/route6': (BuildContext context) => const Rechercher(),
        '/route7': (BuildContext context) => const ResuRechercher(),
        '/route8': (BuildContext context) => const Cinema(),
      },
    );
  }
}
