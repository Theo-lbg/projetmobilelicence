import 'package:flutter/material.dart';

class search extends SearchDelegate {
  List<String> Title = [
    "The Avengers",
    "Avengers: Endgame",
    "Avengers: Infinity War",
    "Avengers: Age of Ultron",
    "The Avengers",
    "The Avengers: Earth's Mightiest Heroes",
    "Ultimate Avengers: The Movie",
    "Ultimate Avengers II",
    "The Avengers",
    "Avengers Assemble",
  ];
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  Widget buildResults(BuildContext context) {
    List<String> searchResults = [];
    for (var title in Title) {
      if (title.toLowerCase().contains(query.toLowerCase())) {
        searchResults.add(title);
      }
    }
    return ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          final item = searchResults[index];
          return ListTile(
            title: Text(item),
            onTap: () {
              query = item;
              showResults(context);
            },
          );
        });
  }

  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: Title.length,
        itemBuilder: (context, index) {
          final item = Title[index];
          return ListTile(
            title: Text(Title[index]),
            onTap: () {
              query = item;
              showResults(context);
            },
          );
        });
  }
}
