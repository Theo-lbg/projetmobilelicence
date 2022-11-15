import 'package:flutter/material.dart';

class Rechercher extends StatefulWidget {
  const Rechercher({super.key});

  @override
  State<Rechercher> createState() => _RechercherState();
}

class _RechercherState extends State<Rechercher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
