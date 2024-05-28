import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/models/shop.dart';
 
class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({super.key, required this.product});

  //add to cart
  void addToCart(BuildContext context ){
    //confirmation dialog box
    showDialog(
      context:  context, 
      builder: (context) =>  AlertDialog (
        content: const Text('Do You Want To Add Item To Cart?'),
        actions: [
          MaterialButton(onPressed:() {
            Navigator.pop(context);
            context.read<Shop>().addToCart(product);
          },
          child: const Text('Yes'),
          ),
          MaterialButton(onPressed:() {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
          )
        ],
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12)
        ),
      margin: const EdgeInsets.all(10),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
            //product image
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(25 ),
              child: const Icon(Icons.account_balance)
              ),
          ),
          const SizedBox(height: 25,),

          //product name
          Text(product.name, style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height: 10,),
           
          //product description
          Text(product.description, style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary
          ),),
          const SizedBox(height: 25,),
          ],
          ),

          //product price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //product price
              Text('\$${product.price}'),
              //cart button
              IconButton(
                onPressed:() => addToCart(context), 
                icon: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12)
                    ),
                  child: const Icon(Icons.add)))
            ],
          )
        ],
      ),
    );
  }
}