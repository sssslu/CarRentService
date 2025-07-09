// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get carList => '차량 목록';

  @override
  String get location => '찾아오시는 길';

  @override
  String get about => '사업 소개';

  @override
  String get language => '언어';

  @override
  String get rentGuide => '대여 방법';

  @override
  String get rentStep0Title => '0. QR 코드 촬영';

  @override
  String get rentStep0Desc => 'QR Code 로 원하는 차량 정보를 확인하세요.';

  @override
  String get rentStep1Title => '1. 대여소 방문';

  @override
  String get rentStep1Desc => '현지 대여소에서 직원의 안내를 받으세요.\n신분증 및 면허증 확인 후 차량 선택이 가능합니다.';

  @override
  String get rentStep2Title => '2. 계약서 작성';

  @override
  String get rentStep2Desc => '간단한 계약서를 작성합니다.\n보험 옵션도 이 단계에서 선택 가능합니다.';

  @override
  String get rentStep3Title => '3. 차량 인수 및 주의사항 안내';

  @override
  String get rentStep3Desc => '차량 외관과 연료 상태를 확인하고,\n사용 시 주의사항에 대해 안내받습니다.';
}
