import 'package:flutter/material.dart';
import 'package:projetmobilelicence/Models/favorite_list_models.dart';
import 'package:projetmobilelicence/Models/favorite_page_models.dart';
import 'package:projetmobilelicence/View/pages/Film_view.dart';
import 'package:projetmobilelicence/View/pages/accueil.dart';
import 'package:projetmobilelicence/View/pages/cinema.dart';
import 'package:projetmobilelicence/View/pages/favorite_list.dart';
import 'package:projetmobilelicence/View/pages/favorite_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => FavoriteListModel()),
        ChangeNotifierProxyProvider <FavoriteListModel, FavoritePageModel> (
          create: (context) => FavoritePageModel(),
          update: (context, favoriteList, favoritepage){
            if (favoritepage == null)
              throw ArgumentError.notNull('favoritepage');
            favoritepage.favoritelist = favoriteList;
            return favoritepage;
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'API FILMS LEBEGUE THEO',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const accueil(title: "Notre première application"),
        routes: <String, WidgetBuilder>{
          '/route1': (BuildContext context) => const accueil(
            title: 'Notre première Application',
          ),
          '/route3': (BuildContext context) => const Film_view(),
          '/route4': (BuildContext context) => const Cinema(),
          '/favoritepage': (BuildContext context) => FavoritePage(),
          '/favoritelist': (BuildContext context) => FavoriteList(),


        },
      ),
    );
  }
}
