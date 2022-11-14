import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              "Bonjour et Bienvenue sur notre Application de référencement de Films et de cinémas:",
              style: TextStyle(color: Colors.red),
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    '/route', (Route<dynamic> route) => false),
                child: const Text("Voir la liste des films"))
          ],
        ),
      ),
    );
  }
}
