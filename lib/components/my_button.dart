// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;
  final Widget? child;
  MyButton({super.key,required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: onTap,
               child: Container(
                 padding: const EdgeInsets.all(20) ,
                 decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                 ),
                 child: child,
               ),
             );
  }
}