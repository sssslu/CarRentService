import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class RentGuideScreen extends StatelessWidget {
  const RentGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(t.rentGuide)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(
              'https://i0.wp.com/bestrentcarusa.com/wp-content/uploads/2017/05/shopping_offers-promotions_full-line-kia-1920x-jpg.jpg?fit=980%2C613&ssl=1',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 200,
                color: Colors.grey[200],
                child: const Center(child: Icon(Icons.image_not_supported)),
              ),
            ),
            const SizedBox(height: 50),
            Text(t.rentStep0Title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(t.rentStep0Desc, textAlign: TextAlign.center),
            const SizedBox(height: 30),
            Text(t.rentStep1Title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(t.rentStep1Desc, textAlign: TextAlign.center),
            const SizedBox(height: 30),
            Text(t.rentStep2Title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(t.rentStep2Desc, textAlign: TextAlign.center),
            const SizedBox(height: 30),
            Text(t.rentStep3Title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(t.rentStep3Desc, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
