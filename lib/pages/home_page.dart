import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_app/pages/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset('lib/shoes/nike_logo.png')),
          const SizedBox(
            height: 30,
          ),
          const Text("Just do it"),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainPage())),
            child: Center(
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
                padding: EdgeInsets.all(8),
                child: Center(
                  child: const Text("shop now",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
