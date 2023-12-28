// 황금 레시피 페이지홈 클래스 //

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// 레시피 컴포넌트 불러오기 : 타이틀, 메뉴, 리스트아이템
import 'package:app_02_recipe/components/recipe_list_item.dart';
import 'package:app_02_recipe/components/recipe_menu.dart';
import 'package:app_02_recipe/components/recipe_title.dart';

import 'package:flutter/cupertino.dart';

class RecipePage extends StatelessWidget {
  // 생성자 메서드에서 key를 받아서 부모 속성을 셋팅함
  // key는 이미 만들어진 부모위젯에서 받는 기본값
  // 이값은 우리가 넘겨주지 않아도 셋팅은 되어야함
  const RecipePage({Key? key}) : super(key: key);
  // -> Key? key -> Key클래스 형 변수 key가 null이어도
  // 그 값을 null 처리하지않고 "null"문자열로 처리해준다
  // -> 널 세이프티(null safety)라고 한다! (물음표사용)

  // build 메서드를 재정의한다!
  @override
  Widget build(BuildContext context) {
    // 가장 바깥쪽 레이아웃 Scaffold 위젯으로 시작!
    return Scaffold(
      // 1. 전체 배경색 설정
      backgroundColor: Color.fromARGB(255, 19, 43, 95),
      // 2. App Bar 클래스 호출 하기
      appBar: _buildRecipeAppBar(),
      // 3. body 구현하기
      body: Column(
        children: [
          // 레서피 전체 타이틀 
          RecipeTitle(),
        ],
      )
        
    );
  }
}

// App Bar 클래스 만들기
// return형은 AppBar
// AppBar 메서드의 이름은 주로 (언더바_)로 시작함
AppBar _buildRecipeAppBar() {
  return AppBar(
    // AppBar 배경색
    backgroundColor: const Color.fromARGB(255, 206, 205, 205),
    // AppBar 그림자 효과 조정속성
    elevation: 1.0,
    // Actions 속성 : AppBar 컨텐츠 파트 [ 리스트 형식 ]
    actions: [
      // 아이콘 위젯 - Icon
      Icon(
          // 아이콘 옵션중 쿠퍼티노가 유명하다
          // 주의 : 쿠퍼티노앱 상단 import 추가할것
          CupertinoIcons.search,
          color: Color.fromARGB(255, 27, 17, 124),
          ),
          SizedBox(width: 15,),
      Icon(
          // 아이콘 옵션중 쿠퍼티노가 유명하다
          // 주의 : 쿠퍼티노앱 상단 import 추가할것
          CupertinoIcons.heart,
          color: Colors.red,
          ),
    ],
  );
}
// AppBar 는 앱 최상단 구역을 차지하며 구성요소로는
// 1. leading - AppBar 상단왼쪽끝 파트
// 2. title - AppBar 타이틀
// 3. actions - AppBar 컨텐츠
// 4. flexibleSpace - AppBar 하단파트위 공간 : SafeArea위젯에서 이 공백을 자동조정
// 5. bottom - AppBar 하단파트
