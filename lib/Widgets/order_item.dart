import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.order,
    required this.state,
    required this.price,
    required this.date,
    required this.COLOR,
  });
  final String order;
  final String state;
  final String price;
  final String date;
  final int COLOR;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xffF37A20),
            child: Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          Column(
            children: [
              Text(
                order,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff804F1E),
                ),
              ),
              SizedBox(height: 4),
              Text(
                state,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(COLOR),
                ),
              ),
              SizedBox(height: 4),
              Text(
                date,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff804F1E),
                ),
              ),
            ],
          ),
          SizedBox(width: 150),
          Text(
            price,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xffF37A20),
            ),
          ),
        ],
      ),
    );
  }
}
