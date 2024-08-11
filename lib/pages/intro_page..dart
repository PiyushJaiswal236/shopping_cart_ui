import 'package:flutter/material.dart';
import 'package:shoping_cart_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                "lib/images/logo1.png",
                height: 240,
              ),
              //title
              const SizedBox(height: 50,),
              const Text(
                "Just Do It !",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              const SizedBox(height: 50),
              //sub title
              const Text(
                "Your Journey Begins Here",
                style: TextStyle(fontSize: 20, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),

              //start button
              GestureDetector(
                onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const HomePage())),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                      child: Text(
                    "Shop Now",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),
                  )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
