import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_interfaces/api/injections.dart';
import 'package:user_interfaces/api/business_logic/my_cubit.dart';
import 'package:user_interfaces/breakfast/screens/home_screen.dart';
import 'package:user_interfaces/donut/donut_home_page.dart';
import 'package:user_interfaces/modern_ui/home_page.dart';
import 'package:user_interfaces/api/presentation/home_api_screen.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // For Breakfast
      theme: ThemeData(
        fontFamily: "Poppins",
      ),

      // For Donut
      // theme: ThemeData(
      //   primarySwatch: Colors.pink,
      // ),
      // home: BlocProvider(
      //   create: (context) => getIt<MyCubit>(),
      //   child: HomeApiScreen(),
      // ),
      home: HomeScreen(),
    );
  }
}