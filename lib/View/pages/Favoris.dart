import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projetmobilelicence/Models/Film_api.dart';
import 'package:projetmobilelicence/View/pages/accueil.dart';
import 'package:projetmobilelicence/View/pages/Film_view.dart';

class Favoris extends StatefulWidget {
  const Favoris({super.key});

  @override
  State<Favoris> createState() => _FavorisState();
}

class _FavorisState extends State<Favoris> {
  Icon _loupe = Icon(Icons.search, color: Colors.white);
  int currentIndex = 0;
  final screens = [
    accueil(
      title: 'Accueil',
    ),
    Film_api
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: _loupe,
            onPressed: () {
              Navigator.pushNamed(context, '/route6');
            },
          )
        ],
      ),

      // body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'Films',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoris',
            backgroundColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
