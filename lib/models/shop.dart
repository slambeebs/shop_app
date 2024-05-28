import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class Shop extends ChangeNotifier{
  // products for sale
  final List <Product> shop =[
    Product(name: 'Product 1', price: 403.3, description: 'Nice Product'),
    Product(name: 'Product 2', price: 255, description: 'Nicer Product'),
    Product(name: 'Product 3', price: 59, description: 'Good Product'),
    Product(name: 'Product 4', price: 94.3, description: 'Better Product'),
  ];

  //user cart
  List<Product> cart = [];

  //get product list
  List<Product> get shopGetter => shop;

  //get user cart
  List<Product> get cartGetter => cart;

  //add item to cart
  void addToCart(Product item){
    cart.add(item);
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Product item){
    cart.remove(item);
    notifyListeners();
  }
}