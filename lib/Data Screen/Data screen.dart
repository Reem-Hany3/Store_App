import 'package:flutter/material.dart';

class Datascreen extends StatelessWidget {
  const Datascreen({
    super.key,
    required this.label,
    required this.coloor,
    required this.img,
    required this.price,
  });

  final String label;
  final String price;
  final String img;
  final int coloor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details of $label'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),

                CircleAvatar(
                  backgroundColor: Color(coloor),
                  radius: 150,
                  child: Image.asset(img),
                ),

                SizedBox(height: 50),

                Text(
                  label,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 50),

                Text(
                  price,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}