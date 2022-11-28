import 'package:flutter/material.dart';

class DetailFilm extends StatefulWidget {
  const DetailFilm({super.key});

  @override
  State<DetailFilm> createState() => _DetailFilmState();
}

class _DetailFilmState extends State<DetailFilm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Détails du Film"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
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
