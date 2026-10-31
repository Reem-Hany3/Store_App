import 'package:first_proj/Screen_Details/Details.dart';
import 'package:flutter/material.dart';

import '../Widgets/item_cart.dart';
import '../core/helpers/custom_app_button.dart';

class Cart extends StatelessWidget {
  Cart({super.key});
  List<String> img = [
    'assets/images/apple.png',
    'assets/images/banana.png',
    'assets/images/Avocado.png',
    'assets/images/salamon.png',
  ];
  List<String> txt = ['Red Apple', 'Orginal Banana', 'Avocado Bowl', 'Salmon'];
  List<String> price = [r'$4,99 kg', r'$5,99 kg', r'$24 st', r'$50 kg'];
  List<String> quantity = ['2', '2', '1', '2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Details(
                            image: img[index],
                            fruitname: txt[index],
                            price: price[index],
                          ),
                        ),
                      );
                    },
                    child: ItemCart(
                      images: img[index],
                      text: txt[index],
                      price: price[index],
                      quantity: quantity[index],
                    ),
                  );
                },
              ),
            ),

            CustomAppButton(text: 'CheckOut', onPressed: () {  },),
          ],
        ),
      ),
    );
  }
}
