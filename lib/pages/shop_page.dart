import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart_app/components/shoe_tile.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //Non functional search bar
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                ),
                //message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    "everyone flies, some fly longer then others",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                //Hot picks

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hot Picks 🔥",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: value.getShopItems().length,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getShopItems()[index];
                          return ShoeTile(
                            shoe: shoe,
                            onTap: () => addShoeToCart(shoe),
                          );
                        })),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 25,
                    right: 25,
                  ),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            ));
  }

  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: AlertDialog(
                icon: Icon(Icons.done,size:40,),
                title: Text("Successfully Added !"),
                content: Text("Check Your Cart"),
              ),
            ));
  }
}
