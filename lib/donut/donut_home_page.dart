import 'package:flutter/material.dart';
import 'package:user_interfaces/donut/my_tabs.dart';
import 'package:user_interfaces/donut/tabs/burger_tab.dart';
import 'package:user_interfaces/donut/tabs/donut_tab.dart';
import 'package:user_interfaces/donut/tabs/pancakes_tab.dart';
import 'package:user_interfaces/donut/tabs/pizza_tab.dart';
import 'package:user_interfaces/donut/tabs/smoothie_tab.dart';

class DonutHomePage extends StatefulWidget {
  const DonutHomePage({super.key});

  @override
  State<DonutHomePage> createState() => _DonutHomePageState();
}

class _DonutHomePageState extends State<DonutHomePage> {
  // My Tabs
  List<Widget> myTabs = [
    // Donut Tab
    MyTabs(
        iconPath: "assets/donut/icons/donut.png"
    ),
    // Burger Tab
    MyTabs(
        iconPath: "assets/donut/icons/burger.png"
    ),
    // Smoothie Tab
    MyTabs(
        iconPath: "assets/donut/icons/smoothie.png"
    ),
    // Pancakes Tab
    MyTabs(
        iconPath: "assets/donut/icons/pancakes.png"
    ),
    // Pizza Tab
    MyTabs(
        iconPath: "assets/donut/icons/pizza.png"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              onPressed: (){
                // Open Drawer
              },
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                onPressed: (){
                  // Account / Profile
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                children: [
                  Text(
                    "I want to  ",
                    style: TextStyle(
                      fontSize: 24
                    ),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                        fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            // TabBar
            TabBar(
              tabs: myTabs,
            ),
            // TabBar View
            Expanded(
              child: TabBarView(
                children: [
                  // Donut Page
                  DonutTab(),
                  // Burger Page
                  BurgerTab(),
                  // Smoothie Page
                  SmoothieTab(),
                  // Pancakes Page
                  PancakesTab(),
                  // Pizza Page
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
