import 'package:flutter/material.dart';

class RentGuideScreen extends StatelessWidget {
  const RentGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('대여 방법')),
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
            const Text(
              '0. QR Code 촬영',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'QR Code 로 원하는 차량 정보를 확인하세요.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              '1. 대여소 방문',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '현지 대여소에서 직원의 안내를 받으세요.\n신분증 및 면허증 확인 후 차량 선택이 가능합니다.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              '2. 계약서 작성',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '간단한 계약서를 작성합니다.\n보험 옵션도 이 단계에서 선택 가능합니다.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              '3. 차량 인수 및 주의사항 안내',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '차량 외관과 연료 상태를 확인하고,\n사용 시 주의사항에 대해 안내받습니다.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
