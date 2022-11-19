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
    getFilm();
  }

  Future<void> getFilm() async {
    _Film = (await Film_api.getFilm()).cast<Film>();
    setState(() {
      _isLoading = false;
    });
    print(_Film);
    print("Coucou fdp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _Film.length,
              itemBuilder: (context, index) {
                return WidgetCustom(
                    title: _Film[index].,
                    duree: "test",
                    thumbnailUrl: "");
              },
            ),
    );
  }
}
