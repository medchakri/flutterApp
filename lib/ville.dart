class Ville {
  int id;
  String name;

  Ville({required this.id, required this.name});

  static Ville fromJson(Map<String, dynamic> json) => Ville(
        id: json['id'],
        name: json['name'],
      );
}
