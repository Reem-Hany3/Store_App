import 'package:flutter/material.dart';
class TFF extends StatelessWidget {
  const TFF({super.key, required this.text, this.icon, required this.tex});
  final String text;
  final String tex;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),
        labelText: tex,
        suffixIcon: icon,
        filled: true,
        fillColor: Color(0xffF3F3F3),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple),borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
