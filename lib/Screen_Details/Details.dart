import 'package:first_proj/Screen_Cart/Cart.dart';
import 'package:first_proj/Widgets/counter.dart';
import 'package:first_proj/core/helpers/custom_app_button.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.image,
    required this.fruitname,
    required this.price,
  });
  final String image;
  final String fruitname;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              fruitname,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: Color(0xffFF5E00),
              ),
            ),

            SizedBox(width: 10),

            Text(
              'Details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xffFF5E00),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(image, height: 250),
            SizedBox(height: 90),
            Text(
              fruitname,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Color(0xff6D3805),
              ),
            ),
            SizedBox(height: 8),
            if (price.isNotEmpty)
            Row(
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                    color: Color(0xff6D3805),
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  '/st',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xff6D3805),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              'Golden Ripe Alphonsa mangoes delivered to your\nhouse in the most hygenic way ever... Best for \neating  plain but can also be made into shakes and cakes.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xff6D3805),
              ),
            ),
            SizedBox(height: 70),
            Row(
              children: [
                Expanded(flex: 3, child: Counter()),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xffFF5E00),
                      size: 42,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 90),
            CustomAppButton(text: 'Add To cart', onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder:(context) => Cart()),);}),
          ],
        ),
      ),
    );
  }
}
