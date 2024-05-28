import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             //shop logo
             Icon(Icons.shopping_basket, 
             size: 100,
             color: Theme.of(context).colorScheme.inversePrimary,
             ),
            const SizedBox(height: 25,),
             //title
             const Text('Minimalist Shop', style: TextStyle(
              fontSize: 30, 
              fontWeight:FontWeight.bold
              ),
             ),
             const SizedBox(height: 10,),
             //subtitle
             const Text('Premium Quality Products'),
             const SizedBox(height: 25,),
             //button
             MyButton(onTap:() => Navigator.pushNamed(context, "shop_page"), 
             child: const Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      ),
    );
  }
}