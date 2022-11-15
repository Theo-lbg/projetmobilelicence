import 'package:flutter/material.dart';
import 'package:projetmobilelicence/Widget/widget_custom.dart';

class Film extends StatefulWidget {
  const Film({super.key});

  @override
  State<Film> createState() => _FilmState();
}

class _FilmState extends State<Film> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            WidgetCustom(
              duree: "15min",
              thumbnailUrl: "",
              title: "Avengers",
            ),
            WidgetCustom(
              duree: "15min",
              thumbnailUrl: "",
              title: "Avengers",
            ),
            WidgetCustom(
              duree: "15min",
              thumbnailUrl: "",
              title: "Avengers",
            ),
            WidgetCustom(
              duree: "15min",
              thumbnailUrl: "",
              title: "Avengers",
            ),
          ],
        ));
  }
}
