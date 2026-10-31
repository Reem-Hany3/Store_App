import 'package:flutter/material.dart';
class ScreevItem extends StatelessWidget {
  const ScreevItem({super.key, required this.price, required this.title, required this.image, required this.bgcolor});
  final String price;
  final String title;
  final String image;
  final int bgcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          
         SizedBox(height: 10,),
         CircleAvatar(
           radius: 50,
           backgroundColor: Color(bgcolor),
           child: Image.asset(image,height: 50,),
         ) ,
          SizedBox(height: 10,),
          Text(title,style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          Text(price,style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.w500),),

        ],
      ),
    );
  }
}
