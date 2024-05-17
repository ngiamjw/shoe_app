import 'package:flutter/material.dart';
import 'package:shoe_app/class/shoe.dart';
import 'package:shoe_app/utl/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 30,
              width: 200,
              color: Colors.grey,
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Text("Search"), Icon(Icons.search)],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [Text("Hot picks")],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    Shoe shoe = Shoe(
                        name: "jordans",
                        description: "cool shoe",
                        filepath: 'lib/shoes/shoe2.png',
                        price: "250");
                    return ShoeTile(shoe: shoe);
                  }))
        ],
      ),
    );
  }
}
