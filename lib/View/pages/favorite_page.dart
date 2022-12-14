import 'package:projetmobilelicence/Models/favorite_page_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text(
          'Vos Favoris',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: _FavoritePageList(),
              ),
            ),
          ],
        ),
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
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/route3', (route) => false);
                      },
                      icon: Icon(Icons.movie_creation_outlined,
                          color: Colors.white70)),
                ],
              ))),








    );
  }
}

class _FavoritePageList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var itemNameStyle = Theme.of(context).textTheme.headline6;

    var favoritepage = context.watch<FavoritePageModel>();

    return ListView.builder(
      itemCount: favoritepage.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset(favoritepage.items[index].image),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: (){
            favoritepage.remove(favoritepage.items[index]);
          },
        ),
        title: Text(
          favoritepage.items[index].name,
          style: itemNameStyle,
        ),
        subtitle: Text(
          favoritepage.items[index].subtitle,
          style:TextStyle(fontSize: 16,color: Colors.grey),
        ),
      ),
    );
  }
}