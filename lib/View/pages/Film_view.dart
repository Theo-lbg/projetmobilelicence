import 'package:flutter/material.dart';
import 'package:projetmobilelicence/Models/Film_api.dart';
import 'package:projetmobilelicence/Widget/widget_custom.dart';

class Film_view extends StatefulWidget {
  const Film_view({super.key});

  @override
  State<Film_view> createState() => _Film_viewState();
}

class _Film_viewState extends State<Film_view> {
  late List<Film_view> _Film;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getFilm();
  }

  Future<void> getFilm() async {
    _Film = (await Film_api.getFilm()).cast<Film_view>();
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
      body: null,
    );
  }
}
