import 'package:flutter/material.dart';
import 'dart:html' as html;
import '../l10n/app_localizations.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  final String a = 'AIzaSyCgmLP5nN1uWGxUzxQ7xoFhAppR_OYPQkk';

  void openMap() {
    html.window.open('https://www.google.com/maps/place/41.3275,19.8189', 'new tab');
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final staticMapUrl =
        'https://maps.googleapis.com/maps/api/staticmap?center=41.3275,19.8189'
        '&zoom=15&size=600x300&markers=color:red%7Clabel:R%7C41.3275,19.8189&key=$a';

    return Scaffold(
      appBar: AppBar(title: Text(t.location)),
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
              'Rruga e Durrësit 123, Tirana',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: openMap,
              icon: const Icon(Icons.map),
              label: Text(t.openInGoogleMaps),
            ),
            const SizedBox(height: 20),
            Card(
              color: const Color(0xFFF5F5F5),
              elevation: 1,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.directions, color: Colors.grey[800]),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        t.locationDirections,
                        style: const TextStyle(fontSize: 14, height: 1.5),
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
