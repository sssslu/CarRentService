import 'package:flutter/material.dart';
import 'dart:html' as html;

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  final String a = 'AIzaSyCgmLP5nN1uWGxUzxQ7xoFhAppR_OYPQkk';
  final String mapUrl = 'https://www.google.com/maps/place/41.3275,19.8189';

  void openMap() {
    html.window.open('https://www.google.com/maps/place/41.3275,19.8189', 'new tab');
  }

  @override
  Widget build(BuildContext context) {
    final staticMapUrl =
        'https://maps.googleapis.com/maps/api/staticmap?center=41.3275,19.8189'
        '&zoom=15&size=600x300&markers=color:red%7Clabel:R%7C41.3275,19.8189&key=$a';

    return Scaffold(
      appBar: AppBar(title: const Text('찾아오시는 길')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(
              staticMapUrl,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 200,
                color: Colors.grey[300],
                child: const Center(child: Icon(Icons.map)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '알바니아 티라나 시내 중심 대여소\nRruga e Durrësit 123, Tirana',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: openMap,
              icon: const Icon(Icons.map),
              label: const Text('Google Map에서 열기'),
            ),
            const SizedBox(height: 20),
            Card(
              color: Color(0xFFF5F5F5),
              elevation: 1,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.directions, color: Colors.grey[800]),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        '공항 도착 후 좌측으로 100m 이동 → 버스터미널 맞은편\n'
                            '빨간 간판 옆 골목으로 우회전 후 직진 50m\n'
                            '오른편 건물 1층 Car Rent Service 간판',
                        style: TextStyle(fontSize: 14, height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
