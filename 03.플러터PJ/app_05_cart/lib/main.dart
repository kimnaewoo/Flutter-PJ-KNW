import 'package:app_05_cart/components/cart_detail.dart';
import 'package:app_05_cart/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 디버그 배너 숨김
      debugShowCheckedModeBanner: false,
      // 앱 테마설정
      theme: theme(),
      // 전체 바디에 해당하는 home속성
      home: CartPage(),
    );
  }
} // myApp 클래스

// 페이지를 구성하는 클래스
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  // 빌드 재정의
  @override
  Widget build(BuildContext context) {
    // 전체 스캐폴드 위젯 안에 구성한다
    return Scaffold(
      // 1. 앱바
      appBar: _buildCartAppBar(),
      // 2. 본문출력파트 바디
      body: Column(
        children: [
          // 카트 페이지 상세구성 클래스 호출
          CartDetail(),
        ],
      ),
    );
  } // build 메서드

  // 앱바를 구성하는 메서드 : _buildCartAppBar()
  AppBar _buildCartAppBar() {
    return AppBar(
      // 왼쪽 시작부분 : leading -> 이끄는 곳
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      // 실제기능을 넣는곳 : actions
      // 기본정렬 오른쪽 끝에서 부터 나옴 (카트모양 아이콘)
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        SizedBox(width: 16), // 오른쪽 공간
      ],
    );
  } // _buildCartAppBar 메서드
} // CartPage 클래스
