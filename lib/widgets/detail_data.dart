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
      Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
            // color: Colors.amber,
            // shadowColor: Colors.black,
            children: [
              Container(
                //color: Colors.purpleAccent,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color.fromARGB(255, 193, 10, 31),
                ),
                child: Text(
                  "Prix actuel : " + price.toString() + " \$",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ]),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            // color: Colors.amber,
            // shadowColor: Colors.black,
            children: [
              Container(
                //color: Colors.purpleAccent,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color.fromARGB(255, 44, 121, 151),
                ),
                child: Text(
                  "Nombre de pokémons restants : " + count.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ]),
        Divider(),
        Row(mainAxisAlignment: MainAxisAlignment.start,
            // color: Colors.amber,
            // shadowColor: Colors.black,
            children: [
              Container(
                //color: Colors.purpleAccent,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color.fromARGB(255, 150, 209, 119),
                ),
                child: Text(
                  "Attaque",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ]),
        Row(mainAxisAlignment: MainAxisAlignment.start,
            // color: Colors.amber,
            // shadowColor: Colors.black,
            children: [
              Container(
                //color: Colors.purpleAccent,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color.fromARGB(255, 150, 209, 119),
                ),
                child: Text(
                  "Points de vie",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ])
      ])
    ]);
  }
}
