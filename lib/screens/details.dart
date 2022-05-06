import 'package:flutter/material.dart';
import '/models/pokemon_screen_data.dart';
import '../widgets/detail_buy_button.dart';
import '/widgets/detail_data.dart';
import '/widgets/detail_image.dart';
import '/widgets/detail_title.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as PokemonScreenData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page d\'achat'),
      ),
      backgroundColor:
          Colors.green, // Le définir avec la couleur en fonction du type
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(id: arguments.id, name: arguments.name),
            SizedBox(
              height: 15,
            ),
            DetailData(id: arguments.id),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const DetailBuyButton(),
    );
  }
}
