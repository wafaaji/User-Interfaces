import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // Price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), topRight: Radius.circular(12)),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "\$" + donutPrice,
                    style: TextStyle(
                      color: donutColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            // Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
              child: Image.asset(
                imageName,
              ),
            ),
            // Flavor
            Text(
              donutFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Dunkins",
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // Love Button + Add Button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Love Icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  // Add Icon
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
