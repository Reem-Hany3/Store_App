import 'package:flutter/material.dart';
class Categ extends StatelessWidget {
  const Categ({super.key, required this.img, required this.bgcolor, required this.text});
  final String img;
  final int bgcolor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Color(bgcolor),
          child: Image.asset(img),
        ),
        SizedBox(height: 16,),
        Text(text,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color(0xff6D3805))),
      ],
    );
  }
}
