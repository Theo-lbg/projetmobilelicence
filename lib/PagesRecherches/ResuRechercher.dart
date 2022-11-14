import 'package:flutter/material.dart';

class ResuRechercher extends StatefulWidget {
  const ResuRechercher({super.key});

  @override
  State<ResuRechercher> createState() => _ResuRechercherState();
}

class _ResuRechercherState extends State<ResuRechercher> {
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
