import 'package:first_proj/Screen_Sign_in/sign_in.dart';
import 'package:first_proj/Screen_sign_up/sign_up.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 120),
            Image.asset('assets/images/welcome.png', height: 362),
            SizedBox(height: 80),
            Text(
              'Welcome to our app',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color(0xff7F4E1D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Shop online and get groceries \n delivered from stores to your home \n in as fast as 1 hour ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff7F4E1D),
              ),
            ),
            SizedBox(height: 130),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(60),
                backgroundColor: Color(0xffFF5E00),
              ),
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));},
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(60),
                side: BorderSide(color: Color(0xffFF5E00)),
              ),
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));},
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFF5E00),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
