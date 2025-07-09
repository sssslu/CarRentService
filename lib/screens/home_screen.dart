import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/locale_provider.dart';
import '../l10n/app_localizations.dart'; // 로컬라이제이션 import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildDivider() => const Divider(thickness: 0.6);
  Widget _buildWDivider() => const Divider(thickness: 0.6, color: Colors.white,);

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
    final provider = Provider.of<LocaleProvider>(context);
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              'RS CORP. Car Rent Service',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            _buildWDivider(),
            Text(
              '${local.language}:',
              style: const TextStyle(fontSize: 16),
            ),
            DropdownButton<Locale>(
              value: provider.locale,
              onChanged: (Locale? newLocale) {
                if (newLocale != null) {
                  provider.setLocale(newLocale);
                }
              },
              items: const [
                DropdownMenuItem(
                  value: Locale('ko'),
                  child: Text('한국어'),
                ),
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: Locale('sq'),
                  child: Text('Shqip'),
                ),
              ],
            ),
            _buildWDivider(),
            const SizedBox(height: 40),
            _buildMenuItem(local.carList, () {
              Navigator.pushNamed(context, '/vehicles');
            }),
            _buildMenuItem(local.rentGuide, () {
              Navigator.pushNamed(context, '/rent-guide');
            }),
            _buildMenuItem(local.location, () {
              Navigator.pushNamed(context, '/location');
            }),
            _buildMenuItem(local.about, () {
              Navigator.pushNamed(context, '/about');
            }),

            _buildDivider(),
          ],
        ),
      ),
    );
  }
}
