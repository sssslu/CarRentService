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

  @override
  String get openInGoogleMaps => 'Google Map에서 열기';

  @override
  String get locationDirections => '공항 도착 후 좌측으로 100m 이동 → 버스터미널 맞은편\n빨간 간판 옆 골목으로 우회전 후 직진 50m\n오른편 건물 1층 Car Rent Service 간판';

  @override
  String get aboutDescription => '저희는 알바니아 티라나 지역을 기반으로 한 차량 대여 서비스입니다.\n현지 오프라인 대여소에서 간편하게 차량을 확인하고 계약할 수 있으며,차후 앱을 통한 온라인 예약 기능도 제공할 예정입니다.';

  @override
  String get aboutContactBranch => '대여소 바로 연락하기';

  @override
  String get aboutAdminSystem => '관리자 차량 등록 시스템';
}
