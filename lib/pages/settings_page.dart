import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/my_header.dart';
import 'package:shop_app/themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //page header
          const MyHeader(title: 'Settings'),
          const SizedBox(height: 20,),
          //dark mode switch
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark Mode', style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
                ),
                //toggle button
                CupertinoSwitch(value: Provider.of<ThemeProvider>(context).isDarkMode, 
                onChanged:(value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
                )
              ],
            )
          ),
        ],
      )
    );
  }
}