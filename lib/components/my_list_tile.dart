import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String name;
  final IconData icon;
  final void Function()? onTap;
  const MyListTile({super.key,
  required this.name,
  required this.icon,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: ListTile(
        leading: Icon(icon),
        title: Text(name),
        onTap: onTap,
      ),
    );
  }
}