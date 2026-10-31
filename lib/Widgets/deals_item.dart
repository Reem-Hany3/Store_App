import 'package:flutter/material.dart';
class DealsItem extends StatelessWidget {
   DealsItem({super.key, required this.img, required this.text1, required this.price});
   final String img;
   final  String text1;
   final String price;


  @override
  Widget build(BuildContext context) {
    return  Container
      (
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
      width: 150,
      decoration: BoxDecoration(color: Color(0xffFFFFFF),borderRadius: BorderRadius.circular(20),),
      child: Column(
        children: [
        Image.asset(img,height: 70,),
        SizedBox(height: 20,),
        Text(text1,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color(0xff6D3805),),textAlign: TextAlign.start,),
        Text("1kg,priceg",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff929292)),),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xffFF5E00)),),
            CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xff3AA14C),
              child: Icon(Icons.add,color: Colors.white,),)
          ],
        )
      ],
      ),
      



    );
  }
}
