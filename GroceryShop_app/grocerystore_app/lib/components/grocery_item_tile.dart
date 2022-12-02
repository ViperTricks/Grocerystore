// ignore_for_file: unused_import, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings, prefer_const_constructors, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color, required Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              imagePath,
              height: 64,
            ),

            // item name
            Text(itemName),

            // price + button
            MaterialButton(
              onPressed: () {},
              color: color[800],
              child: Text(
                '\$' + itemPrice,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
