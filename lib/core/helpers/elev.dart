import 'package:flutter/material.dart';
class Elev extends StatelessWidget {
  const Elev({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        child: Text('sign in'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF5E00),
          fixedSize: Size.fromHeight(50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          side: BorderSide(color: Colors.purpleAccent,width: 5)
        ),
    );
  }
}
