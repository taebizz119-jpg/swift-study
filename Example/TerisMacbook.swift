//TerisMacbook

enum Macbook {
  case air
  case pro
  case max
  // case air, pro, max -> 이렇게도 표현 가능
  var battery: String {
    switch self {
      case .air: return "80%"
      case .pro: return "70%"
      case .max: return "90%"
      // 여기서 case 뒤에 . 안써주면 새로운 변수 이름으로 착각해서 에러남.
      // 내가(Macbook) 만약 air라면 80% 이라는 string 값을 돌려줘. 라는 것.
    }
  }

  func describe() -> String {
    return "이건 \(self) 맥북이고, 배터리는 \(battery) 남았습니다."
  }
  /**
  -> 은 (이 함수를 실행하면 -> 이런 타입의 값이 나온다)
이건 값을 돌려주는 함수. 
  */

  let report = describe()
  print(report) //화면에 "이건 \(self) 맥북이고, 배터리는 \(battery) 남았습니다." 출력.
  // -> 근데 굳이 이렇게 할필요가? 
  
  /**

func descfibe() {
  print("\(baterry)")
  ->이건 값을 돌려주지 않음. 
\()는 뭐예요? — 문자열 안에 값을 끼워 넣는 기능

이걸 문자열 보간(String Interpolation)이라고 불러요. "문자열 안에, 변수나 계산 결과를 끼워 넣는다"는 뜻이에요.
계산도 할수있고, 함수 호출 결과도 넣을 수 있음. 
  */
}

/**

*/
