import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/vehicle_list_screen.dart';
import 'screens/rent_guide_screen.dart';
import 'screens/location_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(const RentCarApp());
}

class RentCarApp extends StatelessWidget {
  const RentCarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rent Service',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/vehicles': (context) => const VehicleListScreen(),
        '/rent-guide': (context) => const RentGuideScreen(),
        '/location': (context) => const LocationScreen(),
        '/about': (context) => const AboutScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
