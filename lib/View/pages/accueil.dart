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
  Icon _loupe = Icon(Icons.search, color: Colors.white);
  Icon _map = Icon(Icons.map, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        //Image en Background
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Asset/icon/background2.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Boutton central Liste des Films
            MaterialButton(
                child: Text(
                  'Liste des films',
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white),
                ),
                color: Colors.white10, //couleur de l'arriere de boutton
                onPressed: () {
                  Navigator.pushNamed(context, '/route5');
                }),
          ],
        ),
      ),
      floatingActionButton: buildNavigationButton(),
    );
  }

  Widget buildNavigationButton() => FloatingActionButton(
      child: _map,
      backgroundColor: Colors.grey,
      onPressed: () {
        Navigator.pushNamed(context, '/route8');
      });
}
