import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final int id;
  final String name;
  const DetailTitle({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Icon(Icons.grass),
        backgroundColor: Colors.black87,
      ),
      label: Text("${name[0].toUpperCase()}${name.substring(1)}"),
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      labelPadding: EdgeInsets.all(10),
    );
  }
}
