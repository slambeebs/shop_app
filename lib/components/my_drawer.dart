import 'package:flutter/material.dart';
import 'package:shop_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [const DrawerHeader(child: Icon(Icons.shop, size: 70,)),
          MyListTile(name: 'Home', icon: Icons.home, onTap:() {
             Navigator.pop(context);
          },),
          MyListTile(name: 'Cart', icon: Icons.shopping_bag, onTap:() {
            Navigator.pop(context);
            Navigator.pushNamed(context, 'cart_page');
          }),
          MyListTile(name: 'Settings', icon: Icons.settings, onTap:() {
             Navigator.pop(context);
             Navigator.pushNamed(context, 'settings_page');
          }),
          ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: MyListTile(name: 'Logout', icon: Icons.logout, onTap:() {
               Navigator.pushNamed(context, 'intro_page');
            }),
          )
        ],
      ),
    ); 
  }
}