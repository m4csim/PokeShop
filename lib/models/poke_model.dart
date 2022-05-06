class Pokemon {
  int id;
  String name;
  String img;
  int count;
  int price;

  Pokemon.fromJson(Map<String, dynamic> data) // Mettre à jour avec l'API en GO
      : id = data['id'],
        name = data['Name'],
        img = data['Pokemon']["sprites"]["front_default"],
        count = data['Count'],
        price = data['Price'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'img': img, 'count': count, 'price': price};
}
