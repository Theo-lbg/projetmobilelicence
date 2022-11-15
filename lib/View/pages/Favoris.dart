import 'package:flutter/material.dart';

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
    );
  }
}
