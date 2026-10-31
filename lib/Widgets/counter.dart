import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffF1F1F1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (counter > 0) {
                    counter--;
                  }
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffFFFFFF),
                child: Icon(
                  Icons.remove,
                  size: 22,
                  color: Color(0xff6D3805),
                ),
              ),
            ),

            Text(
              '$counter',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xff6D3805),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffFFFFFF),
                child: Icon(
                  Icons.add,
                  size: 22,
                  color: Color(0xff6D3805),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}