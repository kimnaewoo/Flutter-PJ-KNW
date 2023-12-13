void main(List<String> args) {

  // 다트언어는 변수형을 자동으로 인식하는 선언이 있다.
  // -> 타입추론

  // 1. var 
  var myHome = "내집이야~!";
  print(myHome);
  // var는 처음에 할당한 값의 형으로 재할당 해야한다.
  // myHome = 32;
  myHome = "너의집도 크다!";
  print(myHome);

  // 2. dynamic -> var와 비슷하지만 나중에 재할당시 
  //처음할당한 값과 다른형의 값을 넣어도 괜찮다. 
  dynamic myId = 'hhh2345';
  print("나의 아이디는 $myId");
  myId = '787878';
  print("너의 아이디는 $myId");
  // [ 문자형 출력방법 : ${코드} 또는 $변수 ]

  
  // 다트언어는 변수의 형을 선언함이 기본이다!

  // 1. 숫자형 : int - 정수 / double - 실수 / num - 정수/실수
  int number1 = 2023;
  // number1 = 3.2;
  // number1 = '하하'; -> 처음 선언한 형으로만 할당이 가능하다.  
  print(number1); 

  // 숫자형도 정수형과 실수형을 철저히 구분한다. 
  double number2 = 7;
  number2 = 3.14;
  print(number2); 
  
  num number3 = 100;
  number3 = 7.84;
  print(number3);

  // 2. 문자형 : String
  String name = "톰 행크스";
  // name = 88; -> 문자형 만 가능하다. 
  print("나는 $name입니다");

  // 3. 불린형 : bool
  bool isTrue = true;
  print("진짜인가? 가짜인가? $isTrue");

  // 4. 콜렉션 : List / Set / Map 

  // 4-1. List 형 = 배열과 유사하다. 
  List<String> we = ['너','나','우리'];
  print(we[2]+'는 모두 친구입니다!');
  print(we.length);
  
  // 4-2. Set 형 
  // -> 순서가 없고 중복되지 않는 데이터집합
  // -> 순서가 없으므로 호출해서 사용코자 할때는 List형으로 변환 후 사용한다. 
  // -> Set형변수.toList()

  // Set<int> evens = {2,4,6,8,10,4};
  // Set<dynamic> evens = {2,4,6,8,10,4,'짝수'};
  var evens = {2,4,6,8,10,4,'짝수'};
  print(evens);
  // 리스트형으로 변환
  print(evens.toList());
  // 변환후에는 순번으로 출력이 가능하다. 
  print(evens.toList()[3]);

  // 4-3 . Map형 - 데이터에 라벨링된 데이터 집합 (객체와 유사)
  Map<String,String> actor = {"이름":"강동원","나이":"40"};
  print(actor);

  // [ 다트의 형 변환 (Casting) ]
  // -> 특정 데이터형에서 다른 형으로 변환하는것을 흔히 캐스팅이라고 한다.
  // 1. 일반적인 형 변환 : 변수형.parse(대상변수)
  // 2. 메서드 체인방식 : 변수.to형()
  // -> 변수.toString() -> 문자형변환 
  // -> 변수.toList() -> 컬렉션 리스트형 변환 

  // 주의 : 형 변환이 안될것 같으면 변환하지 마라! 
  // -> 예컨데 문자형 문자를 숫자로 변경못한다.
  String stNum = "777";
  print('문자형 숫자: $stNum');

  // 문자형 숫자를 캐스팅하여 숫자로 계산하기
  num result = 111 + int.parse(stNum);
  print("111 + 777 = $result");
}