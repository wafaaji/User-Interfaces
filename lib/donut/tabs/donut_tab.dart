import 'package:flutter/material.dart';
import 'package:user_interfaces/donut/tabs_view/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, "assets/donut/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "assets/donut/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "assets/donut/images/grape_donut.png"],
    ["Chocolate", "95", Colors.brown, "assets/donut/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.7,
        ),
        itemBuilder: (context, index){
          return DonutTile(
            donutFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        },
    );
  }
}
