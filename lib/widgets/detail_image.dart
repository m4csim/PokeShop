import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;
  const DetailImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 500,
      ),
      color: Colors.green, // Définir la couleur en fonction du type
      child: Center(
        child: Stack(
          children: [
            Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
