import 'package:flutter/material.dart';

class DetailBuyButton extends StatelessWidget {
  const DetailBuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      foregroundColor: Colors.black,
      backgroundColor: Colors.yellow,
      onPressed: () => Navigator.pop(context), // Définir l'action onPressed
      label: const Icon(Icons.shopping_bag_outlined),
    );
  }
}
