
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart_app/models/shoe.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget{
  Shoe shoe;

  CartItem({super.key, required this.shoe});
  
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)

      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(icon: Icon(Icons.delete), onPressed: removeItemsFromList,),
      ),
    );
  }

  void removeItemsFromList() {
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }
}