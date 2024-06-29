import 'package:flutter/material.dart';
import 'package:user_interfaces/modern_ui/smart_device_box.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Padding Constants
  final double horizontalPadding = 40.0;
  final double verticalPadding = 25.0;

  // List Of Smart Devices
  List mySmartDevices = [
    // [smartDevicesName, iconPath, powerStatus]
    ["Smart Light", "assets/modern/icons/light-bulb.png", true,],
    ["Smart AC", "assets/modern/icons/air-conditioner.png", false,],
    ["Smart TV", "assets/modern/icons/smart-tv.png", false,],
    ["Smart Fan", "assets/modern/icons/fan.png", false,],
  ];

  // Power Button Switched
  void powerSwitchChanged(bool value, int index){
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom AppBar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Menu Icon
                  Image.asset(
                    "assets/modern/icons/menu.png",
                    height: 45,
                    color: Colors.grey[800],
                  ),
                  // Account Icon
                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            // Welcome Text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Home",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    "MITCH KOKO",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 72,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                color: Colors.grey[200],
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            // Smart Devices And Grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Smart Devices",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: mySmartDevices.length,
                  padding: EdgeInsets.all(25.0),
                  itemBuilder: (context, index){
                    return SmartDeviceBox(
                      smartDeviceName: mySmartDevices[index][0],
                      iconPath: mySmartDevices[index][1],
                      powerOn: mySmartDevices[index][2],
                      onChaged: (value) => powerSwitchChanged(value, index),
                    );
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}
