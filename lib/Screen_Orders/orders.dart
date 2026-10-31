import 'package:first_proj/Widgets/order_item.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  Orders({super.key});
  List<String> order = [
    'Order #345',
    'Order #346',
    'Order #347',
    'Order #345',
    'Order #346',
    'Order #347',
  ];
  List<String> state = [
    'Delivered',
    'Cancelled',
    'Delivered',
    'Delivered',
    'Cancelled',
    'Delivered',
  ];
  List<String> Date = [
    'October 26, 2014',
    'October 14, 2016',
    'October 26, 2014',
    'October 14, 2016',
    'October 26, 2014',
    'October 14, 2016',
  ];
  List<String> price = [r'$700', r'$452', r'$281', r'$700', r'$452', r'$281'];
  List<int> COLORS = [
    0xff5EC401,
    0xffF2110D,
    0xff5EC401,
    0xff5EC401,
    0xffF2110D,
    0xff5EC401,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox.shrink(),
          title: Text(
            'Orders',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xffFF5E00),
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Color(0xffFF5E00),
            labelColor: Color(0xffFF5E00),
            labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            unselectedLabelColor: Color(0xff6D3805),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text(
                'No items here !',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 20),
              itemCount: COLORS.length,
              itemBuilder: (context, index) {
                return OrderItem(
                  order: order[index],
                  state: state[index],
                  price: price[index],
                  date: Date[index],
                  COLOR: COLORS[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
