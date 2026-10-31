import 'package:first_proj/core/helpers/custom_app_field.dart';
import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
   Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  final Formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: Formkey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAppField(
                hint: 'Email',
                validator: (value) {
                  if (value == null ||  value.isEmpty) {
                    return ' please enter your email !';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed:() {Formkey.currentState!.validate();}, child: Text('Validate')),
            ],
          ),
        ),
      ),
    );
  }
}
