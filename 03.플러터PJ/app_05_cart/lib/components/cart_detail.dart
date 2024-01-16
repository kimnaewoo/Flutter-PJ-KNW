// 카트 페이지 상세구성 클래스
// 버튼 클릭시 변경되는 변수값에 따라
// 이미지와 정보 표시가 업데이트 되는
//상태변경 위젯인 stateful 위젯(statefulWidget)으로 구성
import 'package:flutter/material.dart';

// 상태관리 위젯 상속한 메인 클래스
class CartDetail extends StatefulWidget {
  const CartDetail({Key? key}) : super(key: key);

  // 상태관리가 반영되게 하기 위한 재정의(클래스연결)
  @override
  State<CartDetail> createState() => _CartDetailState();
} // CartDetail 클래스

// 상태관리에서 변경부분 반영을 위한 build메서드를
// 분리하여 반영하는 서브 클래스
class _CartDetailState extends State<CartDetail> {
  // 선택된 버튼 순번을 저장하는 변수
  int sequenceNum = 0;
  // ->> 이 클래스 내부에서 선언하여 사용하는 변수의
  // 값이 변경되면 이 변수를 사용하는 위젯이 자동업데이트 된다

// 이미지 리스트
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

// 상품명 리스트
  List<String> selectedTit = [
    "Living bicycle",
    "Honda motorcycle",
    "Tesla Model3",
    "Cessna 150",
  ];
// 상품가격 리스트 [ 가격, 조회수 ]
  Map<String, List> selectedPrice = {
    "Living bicycle": [699, 26, 5],
    "Honda motorcycle": [1700, 35, 7],
    "Tesla Model3": [7800, 98, 3],
    "Cessna 150": [12400, 75, 6],
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. 상품이미지 : _buildPicture()
        _buildPicture(),
        // 2. 선택버튼 : _buildSelector()
        // 3. 상품정보 : 상품명 + 상품가격 + 별점 + 리뷰수 + 색상옵션 + 버튼
      ],
    );
  }

  // 1. 상품이미지생성 메서드 : _buildPicture()
  Widget _buildPicture() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child:
          // 비율유즈 박스내에 이미지를 넣는다!
          AspectRatio(aspectRatio: 5 / 3,
          child: Image.asset(
            // 위에 셋팅된 이미지를 호출!
            // List형 변수의 순번으로 상태변경클래스 내부 변수를
            // 사용하여 이 변수가 업데이트 되면 이미지도 변경됨!
            selectedPic[sequenceNum],
            fit: BoxFit.cover,
          ),
          ),
    );
  } // _buildPicture() 메서드
} // _CartDetail 클래스
