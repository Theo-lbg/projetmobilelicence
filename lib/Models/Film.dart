class Film {
  final String nom;
  final String images;
  final String annee;

  Film({required this.nom, required this.images, required this.annee});

  factory Film.fromJson(dynamic json) {
    return Film(
        nom: json['Title'] as String,
        images: json['Poster'] as String,
        annee: json['Year'] as String);
  }

  static List<Film> FilmFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Film.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Film {Title: $nom, images: $images, annee: $annee}';
  }
}
