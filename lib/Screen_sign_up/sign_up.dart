import 'package:first_proj/Screen_Home/Home.dart';
import 'package:first_proj/home_navigation/home_nav.dart';
import 'package:flutter/material.dart';

import '../core/helpers/custom_app_button.dart';
import '../core/helpers/custom_app_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign up",
          style: TextStyle(
            fontWeight: FontWeight(500),
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap:(){Navigator.of(context).pop();} ,
            child: Icon(Icons.arrow_back_ios, color: Color(0xffFF5E00))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 32),
              Image.asset('assets/images/signUP.png', height: 272),
              SizedBox(height: 64),
              Text(
                ' Please enter your information to\ncreate an account.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xff6D3805),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              CustomAppField(hint: 'Email'),
              SizedBox(height: 8),
              CustomAppField(
                hint: 'Password',
                SuffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xffFF5E00),
                ),
              ),
              SizedBox(height: 8),
              CustomAppField(
                hint: 'Confirm Password',
                SuffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xffFF5E00),
                ),
              ),
              SizedBox(height: 72),
              CustomAppButton(text: 'Sign up', onPressed: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeNav())) ; },),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
