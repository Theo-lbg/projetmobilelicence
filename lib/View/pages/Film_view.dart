import 'package:flutter/material.dart';
import 'package:projetmobilelicence/Models/Film_api.dart';
import 'package:projetmobilelicence/Widget/widget_custom.dart';

class Film extends StatefulWidget {
  const Film({super.key});

  @override
  State<Film> createState() => _FilmState();
}

class _FilmState extends State<Film> {
  late List<Film> _Film;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  Future<void> getFilm() async {
    _Film = (await Film_api.getFilm()).cast<Film>();
    setState(() {
      _isLoading = false;
    });
    print(_Film);
  }

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
