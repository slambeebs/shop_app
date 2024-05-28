import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  final String title;
  const MyHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(title, style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontFamily: 'Arial',  
            ),
            ),
          );
  }
}