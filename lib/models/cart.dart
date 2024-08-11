import 'package:flutter/foundation.dart';
import 'package:shoping_cart_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of all shoes
  List<Shoe> shopShoe = [
    Shoe(
        name: "Zoom Freak",
        price: "4000",
        imagePath: "lib/images/img.png",
        description:
            "High-performance basketball shoe designed for speed and agility."),
    Shoe(
        name: "G.T. Hustle",
        price: "6000",
        imagePath: "lib/images/img_1.png",
        description:
            "No matter what you feel like doing today, it’s better as a Member."),
    Shoe(
        name: "G.T. Jump 2",
        price: "5000",
        imagePath: "lib/images/img_2.png",
        description: "Engineered for explosive jumps and cushioned landings."),
    Shoe(
        name: "Air Max 270",
        price: "7000",
        imagePath: "lib/images/img_3.png",
        description: "Iconic design with maximum comfort and style."),
    Shoe(
        name: "Pegasus 39",
        price: "8000",
        imagePath: "lib/images/img_4.png",
        description: "Versatile running shoe with responsive cushioning."),
    Shoe(
        name: "Flyknit",
        price: "9000",
        imagePath: "lib/images/img_5.png",
        description: "Designed to reduce injury and keep you running."),
  ];

//list of all items in the cart
  List<Shoe> userCart = [];

  //get shop items
  List<Shoe> getShopItems() {
    return shopShoe;
  }


//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove item from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
