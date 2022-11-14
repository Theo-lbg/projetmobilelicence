import 'package:flutter/material.dart';

class accueil extends StatefulWidget {
  const accueil({super.key, required this.title});
  final String title;

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
  Color _color = Colors
      .white; //je definie la couleur de fond afin ensuite de la mettre transparente
  Icon _loupe = Icon(Icons.search, color: Colors.black);
  Icon _map = Icon(Icons.map, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      body: Container(
        //Image en Background
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Asset/icon/SplashScreen.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Boutton central Liste des Films
            MaterialButton(
                child: Text(
                  'Liste des films',
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black),
                ),
                color: Colors.white38, //couleur de l'arriere de boutton
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/route5');
                }),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
                child: _map,
                onPressed: () {
                  Navigator.pushNamed(context, '/route8');
                }),
          ],
        ),
      ),
    );
  }
}
