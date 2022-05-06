import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final int id;
  final int price;
  final int count;
  const DetailData(
      {Key? key, required this.id, required this.price, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: 350,
        ),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border(
            top: BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center,
          // color: Colors.amber,
          // shadowColor: Colors.black,
          children: [
            Text(
              "Prix actuel : " + price.toString() + " \$",
            ),
            Text(
              "Nombre de pokémons restants : " + count.toString(),
            ),
          ])
    ]);
  }
}
