// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get carList => 'Vehicle List';

  @override
  String get location => 'Location';

  @override
  String get about => 'About Us';

  @override
  String get language => 'Language';

  @override
  String get rentGuide => 'How to Rent';

  @override
  String get rentStep0Title => '0. Scan QR Code';

  @override
  String get rentStep0Desc => 'Check vehicle info using a QR code.';

  @override
  String get rentStep1Title => '1. Visit Rental Location';

  @override
  String get rentStep1Desc => 'Visit the rental site and consult with staff.\nID and license verification is required before choosing a vehicle.';

  @override
  String get rentStep2Title => '2. Fill Out Contract';

  @override
  String get rentStep2Desc => 'Fill out a simple rental agreement.\nInsurance options can be selected here.';

  @override
  String get rentStep3Title => '3. Vehicle Handover & Safety Briefing';

  @override
  String get rentStep3Desc => 'Check the vehicle exterior and fuel level.\nListen to instructions for safe use.';
}
