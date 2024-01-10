// 로그인 페이지

import 'package:flutter/material.dart';

// 로고위젯 추가
import 'package:app_04_login/components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 리스트뷰를 써야만 스크롤을 사용하여 하단 입력 키보드 올라올때 대비할수 있다.
      body: ListView(
        children: [
          SizedBox(height: 20),
          // 로고보이기
          Logo('login'),
          // 임시 이동 버튼
          TextButton(
            onPressed: () {
              // debugPrint("나 눌렸어?");
              // 라우터이동은 Navigator pushNamed() 메서드!!
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Go to Home'),
          )
        ],
      ),
    );
  }
}
