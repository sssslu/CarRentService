import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(t.about)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              'assets/cars.png',
              height: 180,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              "RS Corp. Car Rent Service",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              t.aboutDescription,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.storefront),
              title: Text(t.aboutContactBranch),
            ),
            ListTile(
              leading: const Icon(Icons.admin_panel_settings),
              title: Text(t.aboutAdminSystem),
            ),
          ],
        ),
      ),
    );
  }
}
