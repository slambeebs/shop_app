import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/my_button.dart';
import 'package:shop_app/components/my_header.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove item from cart
  void removeFromCart (BuildContext context, Product product){
    showDialog(
      context:  context, 
      builder: (context) =>  AlertDialog (
        content: const Text('Remove This Item From Your Cart?'),
        actions: [
          MaterialButton(onPressed:() {
            Navigator.pop(context);
            context.read<Shop>().removeFromCart(product);
          },
          child: const Text('Yes'),
          ),
          MaterialButton(onPressed:() {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
          )
        ],
      ),
      );
  }
  //paybutton pressed
      void payButtonPressed (BuildContext context){
        showDialog(context: context, builder:(context) => const AlertDialog(
          content: Text('Payment Backend Not Connected...'),
        ),
        );
      }
  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;
     
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          const MyHeader(title: 'Cart'),
          //cart list
          Expanded(child: cart.isEmpty ? 
          const Center(child: Text('Cart Is Emoty')) : ListView.builder(
            itemCount: cart.length,
            itemBuilder:(context, index) {
            //get item from cart
            final item = cart [index];
            //return as Cart Tile UI
            return ListTile(
              title: Text(item.name),
              subtitle: Text(item.price.toString()),
              trailing: IconButton(
                onPressed:() => removeFromCart(context, item), 
                icon: const Icon(Icons.delete)
                ),
            );
          },)
          ),
          //pay button
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: MyButton(
                onTap:() => payButtonPressed(context), 
                child: const Text('Pay Now')
                ),
            ),
          )
        ],
      ),
    );
  }
}