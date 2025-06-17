import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildDivider() => const Divider(thickness: 0.6);

  Widget _buildMenuItem(String text, VoidCallback onTap) {
    return Column(
      children: [
        _buildDivider(),
        ListTile(
          title: Center(
            child: Text(text, style: const TextStyle(fontSize: 18)),
          ),
          onTap: onTap,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              'Car Rent Service (beta)',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            _buildDivider(),
            const Text(
              'language : korean',
              style: TextStyle(fontSize: 16),
            ),
            _buildDivider(),
            const SizedBox(height: 40),
            _buildMenuItem('차량 목록', () {
              Navigator.pushNamed(context, '/vehicles');
            }),
            _buildMenuItem('대여 방법', () {
              Navigator.pushNamed(context, '/rent-guide');
            }),
            _buildMenuItem('찾아오시는 길', () {
              Navigator.pushNamed(context, '/location');
            }),
            _buildMenuItem('사업 소개', () {
              Navigator.pushNamed(context, '/about');
            }),
            _buildDivider(),
          ],
        ),
      ),
    );
  }
}
