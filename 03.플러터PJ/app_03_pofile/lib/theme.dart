// 전체 앱의 테마색상 지정 클래스

// 머리티얼 디자인이므로 머티리얼 컬러라고 명명한다
// 공식 머티리얼 디자인 색상지정 클래스!
import 'package:flutter/material.dart';

// 프라이머리 컬러란 앱의 아이덴티티를 나타내는 색상이다.(플러터정의)

const MaterialColor primaryWhite = MaterialColor(
    0xFFFFFFFF,
    // 스와치는 여러색상을 맵형으로 지정함
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF)
    });

// 테마데이터를 리턴하는 함수를 만들자!
ThemeData theme() {
  return ThemeData(
    // 앱의 전체테마 스와치(색상모음 지정)
    primarySwatch: primaryWhite,
    // 상단의 앱바의 테마도 여기서 지정가능(아이콘색을 파란색으로 지정한다)
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
