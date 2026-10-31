import 'package:flutter/material.dart';
class CustomAppField extends StatelessWidget {
  const CustomAppField({super.key, required this.hint, this.SuffixIcon, this.validator});
  final String hint;
  final Widget? SuffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField
      (decoration: InputDecoration(

        hintText: hint,
        suffixIcon:SuffixIcon,
        filled: true,
        fillColor: Color(0xffF3F3F3),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffFF5E00)))),
      validator: validator ,
    );
  }
}
