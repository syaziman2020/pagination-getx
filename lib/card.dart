import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String email;
  CardCustom(
      {Key? key,
      required this.email,
      required this.imageUrl,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          ClipRRect(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: 40,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Nama : $name'),
          const SizedBox(
            height: 10,
          ),
          Text('Email : $email'),
        ],
      ),
    );
  }
}
