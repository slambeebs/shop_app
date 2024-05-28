import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/shop.dart';
import 'package:shop_app/pages/cart_page.dart';
import 'package:shop_app/pages/intro_page.dart';
import 'package:shop_app/pages/settings_page.dart';
import 'package:shop_app/pages/shop_page.dart';
import 'package:shop_app/themes/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create:(context) => Shop(),),
      ChangeNotifierProvider(create:(context) => ThemeProvider(),)
  ],
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
      home: const IntroPage(),
      theme:  Provider.of<ThemeProvider>(context).themeData,
      routes: {
        'intro_page':(context) => const IntroPage(),
        'shop_page':(context) => const ShopPage(),
        'cart_page':(context) => const CartPage(),
        'settings_page':(context) => const SettingsPage(),
      },
    );
  }
}