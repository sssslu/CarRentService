import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('사업 소개')),
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
            const Text(
              'Car Rent Service',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              '저희는 알바니아 티라나 지역을 기반으로 한 차량 대여 서비스입니다.\n'
                  '현지 오프라인 대여소에서 간편하게 차량을 확인하고 계약할 수 있으며,'
                  '차후 앱을 통한 온라인 예약 기능도 제공할 예정입니다.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 30),
            
            const ListTile(
              leading: Icon(Icons.storefront),
              title: Text('대여소 바로 연락하기'),
            ),
            const ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title: Text('관리자 차량 등록 시스템'),
            ),
          ],
        ),
      ),
    );
  }
}
