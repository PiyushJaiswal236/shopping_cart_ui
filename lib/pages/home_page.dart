import 'package:flutter/material.dart';
import 'package:shoping_cart_app/components/bottom_nav_bar.dart';
import 'package:shoping_cart_app/pages/cart_page.dart';
import 'package:shoping_cart_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTapChange: (index) => navigateBottomNavBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.menu),
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            //logo
            DrawerHeader(
              child: Image.asset(
                "lib/images/logo.png",
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[500],
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.grey[500], fontSize: 20),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.grey[500],
                ),
                title: Text(
                  "Cart",
                  style: TextStyle(color: Colors.grey[500], fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
