import 'package:flutter/material.dart';
import '../data/dummy_vehicles.dart';

class VehicleListScreen extends StatelessWidget {
  const VehicleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('차량 목록')),
      body: ListView.builder(
        itemCount: dummyVehicles.length,
        itemBuilder: (context, index) {
          final vehicle = dummyVehicles[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                Image.network(vehicle.imageUrl),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vehicle.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('${vehicle.year}년식'),
                      const SizedBox(height: 8),
                      Text(vehicle.description),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
