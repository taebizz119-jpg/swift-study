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
      // self란, 타입 안에 있는 모든 프로퍼티와 메서드가 각자 자유롭게 쓸 수 있는 "나 자신을 가리키는 도구"
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
  
func descfibe() {
  print("\(baterry)")
  ->이건 값을 돌려주지 않음. 
  
  /**
## 문자열 보간(String Interpolation)
  문자열 안에, 변수나 계산 결과를 끼워 넣음. 계산도 할수있고, 함수 호출 결과도 넣을 수 있음. 
  "스코프(Scope; 이 변수를 어디까지 볼 수 있는가)"라는 개념 때문에 바깥에서 선언된 var를 안에서 볼 수 있지만, 반대는 안됨.
  즉, 바깥에서는 {} 안쪽에서 선언된 변수를 호출할 수 없음. 안에서는 바깥의 변수 호출 가능.
  */


/**

*/
