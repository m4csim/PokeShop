import 'package:flutter/material.dart';

class PokemonCardData extends StatelessWidget {
  final String image;
  final String name;
  final int count;
  const PokemonCardData({
    Key? key,
    required this.name,
    required this.image,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
        const Divider(),
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                ),
                padding: const EdgeInsets.all(8),
                child: Text(count.toString()))
          ],
        )
      ],
    );
  }
}
