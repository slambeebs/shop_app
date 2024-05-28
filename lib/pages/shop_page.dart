import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/my_drawer.dart';
import 'package:shop_app/components/my_header.dart';
import 'package:shop_app/components/my_product_tile.dart';
import 'package:shop_app/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    //access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed:() => Navigator.pushNamed(context, 'cart_page'), 
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        )],
      ),
      drawer: const MyDrawer(),
      body: ListView(
        children: [ 
          //shop title
          const MyHeader(title: 'Shop'),

          const SizedBox(height: 10,),
          //subtitle
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Pick from a selected list of premium products.', style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),),
          ),
        
          SizedBox(
          height: 650,
          child: ListView.builder(
            padding: const EdgeInsets.all(15),
            scrollDirection:Axis.horizontal,
            itemCount: products.length,
            itemBuilder:(context, index) {
              //get each product from shop
              final product = products[index];
              //return to UI
              return MyProductTile(product: product);
          },
          ),
        ),
        const SizedBox(height: 25,),
        // shop name
        Text('m i n i m a l  x  s h o p', textAlign: TextAlign.center, style: TextStyle(
          fontSize: 15,
          color: Theme.of(context).colorScheme.inversePrimary
        ),)
        ],
      ),
    );
  }
}