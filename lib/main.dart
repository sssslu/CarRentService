import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/locale_provider.dart'; // ✅ 외부에서 import만 사용
import 'l10n/app_localizations.dart';
import 'screens/home_screen.dart';
import 'screens/vehicle_list_screen.dart';
import 'screens/rent_guide_screen.dart';
import 'screens/location_screen.dart';
import 'screens/about_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
      ],
      child: const MyAppRoot(),
    ),
  );
}

class MyAppRoot extends StatelessWidget {
  const MyAppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final localeProvider = Provider.of<LocaleProvider>(context);

        return MaterialApp(
          locale: localeProvider.locale,
          supportedLocales: const [
            Locale('en'),
            Locale('ko'),
            Locale('sq'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          initialRoute: '/',
          routes: {
            '/': (_) => const HomeScreen(),
            '/vehicles': (_) => const VehicleListScreen(),
            '/rent-guide': (_) => const RentGuideScreen(),
            '/location': (_) => const LocationScreen(),
            '/about': (_) => const AboutScreen(),
          },
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
