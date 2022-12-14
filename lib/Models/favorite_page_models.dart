import 'package:projetmobilelicence/Models/favorite_list_models.dart';
import 'package:flutter/foundation.dart';

class FavoritePageModel extends ChangeNotifier{
  late FavoriteListModel _favoriteList;

  final List<int> _itemIds = [];

  FavoriteListModel get favoriteList => _favoriteList;

  set favoritelist(FavoriteListModel newList){
    _favoriteList = newList;

    notifyListeners();
  }

  List<Item> get items =>
      _itemIds.map((id) => _favoriteList.getById(id)).toList();

  void add(Item item){
    _itemIds.add(item.id);
    notifyListeners();
  }

  void remove(Item item){
    _itemIds.remove(item.id);
    notifyListeners();
  }

}