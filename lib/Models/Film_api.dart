class Film_api {
  final String nom;
  final String images;
  final String duree;

  Film_api({required this.nom, required this.images, required this.duree});

  factory Film_api.fromJson(dynamic json) {
    return Film_api(
        nom: json['Title'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        duree: json['totalTime'] as String);
  }

  static List<Film_api> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Film_api.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {Title: $nom, images: $images, duree: $duree}';
  }
}
