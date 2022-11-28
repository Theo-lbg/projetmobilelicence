import 'package:flutter/material.dart';
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
    Widget PosterSlider() {
      return ImageSlideshow(
        width: MediaQuery.of(context).size.width,
        height: 222,
        initialPage: 0,
        indicatorColor: Colors.deepPurple,
        indicatorBackgroundColor: Colors.grey,
        children: [],
        autoPlayInterval: 5000,
        isLoop: true,
      );
    }

    Widget ShowsSliderWidget(List<dynamic> myList) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 230,
        child: Row(
          children: [
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Get.to(() => Details(),
                      //     arguments: myList[index],
                      //     duration: Duration(milliseconds: 700),
                      //     transition: Transition.leftToRightWithFade);
                    },
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(myList[index].Image),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 8,
                            top: 8,
                            child: Container(
                              width: 55,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blueGrey),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.blueGrey,
                                    size: 19,
                                  ),
                                  myList[index].IMDbRating.toString().isNotEmpty
                                      ? Text(
                                          myList[index].IMDbRating,
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 14,
                                          ),
                                        )
                                      : Text(
                                          'TBA',
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 14,
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 150,
                              height: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  color: Colors.blueGrey),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        myList[index].Title.toString().length >
                                                28
                                            ? myList[index]
                                                    .Title
                                                    .toString()
                                                    .substring(0, 28) +
                                                '...'
                                            : myList[index].Title.toString(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 15),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Détails du Film"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 310,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 5,
                              left: 5,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white70,
                                ),
                              )),
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
                                            image: NetworkImage(''),
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
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                              "test",
                                              style: TextStyle(
                                                  color: Colors.white,
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
                            "test",
                            style: TextStyle(color: Colors.white, fontSize: 25),
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
                                    color: Colors.white54, fontSize: 15),
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
                                          color: Colors.white60, fontSize: 20),
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
                                  onPressed: () async {
                                    print(show.isFav);
                                    if (show.isFav == false) {
                                      setState(() {
                                        Provider.of<TopShows>(context,
                                                listen: false)
                                            .isFav = true;
                                        Provider.of<TopShows>(context,
                                                listen: false)
                                            .updateFav(show, true);
                                        Get.snackbar('Added To Favourites', '',
                                            duration:
                                                Duration(milliseconds: 1000));
                                      });
                                    } else {
                                      setState(() {
                                        Provider.of<TopShows>(context,
                                                listen: false)
                                            .isFav = false;
                                        Provider.of<TopShows>(context,
                                                listen: false)
                                            .updateFav(show, false);
                                        Get.snackbar(
                                            'Removed from Favourites', '',
                                            duration:
                                                Duration(milliseconds: 1000));
                                      });
                                    }
                                  },
                                  child: Text(!show.isFav
                                      ? 'Add to Favorites'
                                      : 'Remove from Favorites'),
                                  style: ElevatedButton.styleFrom(
                                      primary: deepPurple),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.white24,
                            endIndent: 35,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'teest', //info.Plot,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.white24,
                            endIndent: 35,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Directors : ', //+ info.Directors,
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Produced By : ', //+ info.Companies,
                            style:
                                TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.white24,
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
                ),
              ],
            ),
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
