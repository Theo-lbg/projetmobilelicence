import 'package:flutter/material.dart';
import 'package:projetmobilelicence/View/pages/Film_view.dart';
import 'package:projetmobilelicence/View/pages/accueil.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:projetmobilelicence/Models/Film.dart';
import 'package:projetmobilelicence/Models/Film_api.dart';

class DetailFilm extends StatefulWidget {
  const DetailFilm({super.key});

  @override
  State<DetailFilm> createState() => _DetailFilmState();
}

class _DetailFilmState extends State<DetailFilm> {
  int currentIndex = 0;
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
        title: const Text("Détails du Film"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _Film.length,
              itemBuilder: (context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 310,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 130,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 115,
                                    height: 165,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                _Film[index].images),
                                            fit: BoxFit.fill)),
                                  ),
                                  Container(
                                    width: 253,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Container(
                                            padding: EdgeInsets.all(9.5),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: .3,
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                              _Film[index].annee,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 8, top: 5),
                                          child: Row(
                                            children: [
                                              // _Film.RunTimeStr != 'null'
                                              //     ? Text(
                                              //         info.RunTimeStr,
                                              //         style: TextStyle(
                                              //             color: Colors.white54,
                                              //             fontSize: 15),
                                              //       )
                                              //     : SizedBox(),
                                              // info.RunTimeStr != 'null'
                                              //     ? Expanded(child: SizedBox())
                                              //     : SizedBox(),
                                              // info.ContentRating != 'null'
                                              //     ? Text(
                                              //         'Rated : ' +
                                              //             info.ContentRating,
                                              //         style: TextStyle(
                                              //             color: Colors.white54,
                                              //             fontSize: 15),
                                              //       )
                                              //:
                                              SizedBox(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            _Film[index].nom,
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Release Date :  ', //+ info.ReleaseDate,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.blueGrey,
                                    size: 24,
                                  ),
                                  // show.IMDbRating.toString().isNotEmpty
                                  //     ? Padding(
                                  //         padding: EdgeInsets.only(left: 5),
                                  //         child: Text(
                                  //           show.IMDbRating,
                                  //           style: TextStyle(
                                  //               color: Colors.white60,
                                  //               fontSize: 20),
                                  //         ),
                                  // )
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "TBA",
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {},
                                  child: Text('Remove from Favorites'),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueGrey),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.blueGrey,
                            endIndent: 35,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'teest', //info.Plot,
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.blueGrey,
                            endIndent: 35,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Directors : ', //+ info.Directors,
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Produced By : ', //+ info.Companies,
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 13),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.blueGrey,
                            endIndent: 35,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'Films',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoris',
            backgroundColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
