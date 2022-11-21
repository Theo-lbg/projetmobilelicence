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






      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
              color: Colors.blueGrey,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  <Widget>[
                  IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/route1');
                      },
                      icon: Icon(Icons.home, color: Colors.white70,)
                  ),
                  IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/route5');
                      },
                      icon: Icon(Icons.movie_creation_outlined, color: Colors.white70)
                  ),
                  IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/route4');
                      },
                      icon: Icon(Icons.favorite_border, color: Colors.white)
                  ),
                ],
              )
          )
      ),
    );
  }
}
