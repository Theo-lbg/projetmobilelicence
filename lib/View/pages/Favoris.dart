import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projetmobilelicence/View/pages/accueil.dart';

class Favoris extends StatefulWidget {
  const Favoris({super.key});

  @override
  State<Favoris> createState() => _FavorisState();
}

class _FavorisState extends State<Favoris> {
  Icon _loupe = Icon(Icons.search, color: Colors.white);

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





      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),




      bottomNavigationBar: GNav(
        backgroundColor: Colors.blueGrey,
        color: Colors.white,
        activeColor: Colors.white,
        //tabBackgroundColor: Colors.grey, //avoir une couleur de fond quand on clique sur l'icone en question
        padding: EdgeInsets.all(16),
        gap: 8,
        tabs: const [
          GButton(
              icon: Icons.home,
              text: 'Accueil',
          ),
          GButton(
            icon: Icons.movie_creation_outlined,
            text: 'Films',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Favoris',
          ),
        ],
      ),
    );
  }
}
