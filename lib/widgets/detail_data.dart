import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final int id;
  const DetailData({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 350,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: Colors.black,
          ),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
    );
  }
}
