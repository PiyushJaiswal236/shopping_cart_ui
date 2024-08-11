import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart_app/components/cart_item.dart';
import 'package:shoping_cart_app/models/shoe.dart';

import '../models/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            //heading
            Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 20,),
            Expanded(child:
                ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getUserCart()[index];
                    return CartItem(shoe: shoe);
                },)
            )
          ],
        ),
      ),
    );
  }
}
