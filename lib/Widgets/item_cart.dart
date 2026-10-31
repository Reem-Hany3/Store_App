import 'package:first_proj/Widgets/counter.dart';
import 'package:flutter/material.dart';
class ItemCart extends StatelessWidget {
  const ItemCart({super.key, required this.images, required this.text, required this.price, required this.quantity});
  final String images;
  final String text;
  final String price;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        child: Icon(Icons.delete_forever,color: Colors.white,size: 50,),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {},
      child: Container(
        height: 120,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(color: Colors.grey.shade50,borderRadius: BorderRadius.circular(15)),
        child:Row(
          children: [
            Image.asset(images  ,width: 100,height: 100,),
            SizedBox(width: 30,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xff6D3805),
                    ),
                  ),
                  SizedBox(height: 10),
                  Counter(),
                ],
              ),
            ),
            Text(price,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6D3805)),)
          ],

        ),

      ),
    );
  }
}
