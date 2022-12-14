class FavoriteListModel{

  static List<String> itemNames = [
    'The Avengers',
    'Avengers : Endgame',
    'Avengers : Infinity War',
    'Avengers : Age of Ultron',
    'The Avengers',
    "The Avengers : Earth's Mightiest Heroes",
    'Ultimate Avengers: The Movie',
    'Ultimate Avengers II',
    'The Avengers',
    'Avengers Assemble',
  ];

  static List<String> itemSubtitles = [
    '2012',
    '2019',
    '2018',
    '2015',
    '1998',
    '2010-2012',
    '2006',
    '2006',
    '1961-1969',
    '2012-2019',
  ];

  static List<String> itemImages = [
    ("Asset/poster/theAvengers.jpg"),
    ("Asset/poster/avengersEndgame.jpg"),
    ("Asset/poster/avengersInfinityWar.jpg"),
    ("Asset/poster/avengersAgeOfUltron.jpg"),
    ("Asset/poster/theAvengers1998.jpg"),
    ("Asset/poster/TheAvengersEarthsMightiestHeroes.jpg"),
    ("Asset/poster/ultimateAvengersTheMovie.jpg"),
    ("Asset/poster/ultimateAvengers2.jpg"),
    ("Asset/poster/theAvengers1961.jpg"),
    ("Asset/poster/avengersAssemble.jpg"),
  ];


  Item getById(int id) => Item(
    id,
    itemNames[id % itemNames.length],
    itemSubtitles[id % itemSubtitles.length],
    itemImages[id % itemImages.length],
  );

  Item getByPosition (int position){
    return getById(position);
  }
}

class Item{
  final int id;
  final String name;
  final String subtitle;
  final String image;

  const Item(
      this.id,
      this.name,
      this.subtitle,
      this.image,
      );

  @override
  int get hashCode => id;

  @override
  bool operator == (Object other) => other is Item && other.id == id;
}