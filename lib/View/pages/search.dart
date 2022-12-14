import 'package:flutter/material.dart';
import 'package:projetmobilelicence/Models/Film.dart';
import 'package:projetmobilelicence/Models/Film_api.dart';
import 'package:projetmobilelicence/Widget/widget_custom.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  late List<Film> _Film;
  bool _isLoading = false;
  late Map<String, dynamic> mapSearch;

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

  void getSearchResu(search) async {
    mapSearch = await getFilmSearch(search);
    setState(() {
      _isLoading = true;
    });
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
      body: null,
    );
  }
}
