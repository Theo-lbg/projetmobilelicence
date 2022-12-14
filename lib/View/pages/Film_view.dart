import 'package:flutter/material.dart';
import 'package:projetmobilelicence/Models/Film.dart';
import 'package:projetmobilelicence/Models/Film_api.dart';
import 'package:projetmobilelicence/Widget/widget_custom.dart';

class Film_view extends StatefulWidget {
  const Film_view({super.key});

  @override
  State<Film_view> createState() => _Film_viewState();
}

class _Film_viewState extends State<Film_view> {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Votre liste de films"),
        // centerTitle: true,
        // backgroundColor: Colors.blueGrey,
        // elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, "/route5");
            },
          ),
        ],
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _Film.length,
              itemBuilder: (context, index) {
                return WidgetCustom(
                  title: _Film[index].nom,
                  Year: _Film[index].annee,
                  thumbnailUrl: _Film[index].images,
                  Type: _Film[index].type,
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
              color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/route1', (route) => false);
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white70,
                      )),
                  // IconButton(
                  //     onPressed: null,
                  //     icon: Icon(Icons.movie_creation_outlined,
                  //         color: Colors.white70)),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/favoritelist');
                      },
                      icon: Icon(Icons.favorite_border, color: Colors.white)),
                ],
              ))),
    );
  }
}
