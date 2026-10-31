import 'package:first_proj/Providers/Favorites%20Provider.dart';
import 'package:first_proj/Screen_Welcome/welcome.dart';
import 'package:first_proj/Screen_profile/profile.dart';
import 'package:first_proj/Screen_sign_up/sign_up.dart';
import 'package:first_proj/Screen_splash/splash.dart';
import 'package:first_proj/products_cubit/productts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '(provider task)_product screen/products.dart';
import 'Screen_Cart/Cart.dart';
import 'Screen_Categories/Categories.dart';
import 'Screen_Home/Home.dart';
import 'Screen_Orders/orders.dart';
import 'Screen_Sign_in/sign_in.dart';
import 'Validation in session/Validation.dart';
import 'favorite with cubit/favorite_cubit.dart';
import 'home_navigation/home_nav.dart';

void main() {

  runApp(
    BlocProvider(
      create: (_) => FavoriteCubit(),
      child: const MyApp(),
    ),
  );

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Splash(),
    );
  }
}
