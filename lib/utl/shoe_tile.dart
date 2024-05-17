import 'package:flutter/material.dart';
import 'package:shoe_app/class/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 280,
      child: Column(
        children: [
          Image.asset(shoe.filepath),
          SizedBox(
            height: 10,
          ),
          Text(shoe.description)
        ],
      ),
    );
  }
}
