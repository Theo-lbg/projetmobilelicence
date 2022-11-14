import 'package:flutter/material.dart';

class accueil extends StatefulWidget {
  const accueil({super.key, required this.title});
  final String title;

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Bienvenue sur notre Application qui réfère vos films préférés !",
              style: TextStyle(color: Colors.red, wordSpacing: 12),
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    '/route2', (Route<dynamic> route) => false),
                child: const Text("Voir la liste des films"))
          ],
        ),
      ),
    );
  }
}
