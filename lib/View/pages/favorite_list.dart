import 'package:projetmobilelicence/Models/favorite_list_models.dart';
import 'package:projetmobilelicence/Models/favorite_page_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title:
              Text('Favorite',style: Theme.of(context).textTheme.headline1),
            floating: true,
            actions: [
              IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/favoritepage'),
                  icon: const Icon(Icons.favorite_border),
              ),
            ],
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context,int index){
              return _MyListItem(index);
            },
              childCount: 15),
          ),
        ],
      ),
    );
  }
}

class _MyListItem extends StatelessWidget{
  
}

