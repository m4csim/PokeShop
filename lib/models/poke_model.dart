class Pokemon {
  int id;
  String name;
  String img;

  Pokemon.fromJson(Map<String, dynamic> data) // Mettre à jour avec l'API en GO
      : id = data['id'],
        name = data['name'],
        img = data['img'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img};
}
