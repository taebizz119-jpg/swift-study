var age: Int = 30
var height: Double = 171.8
var weight: Double = 99.9
var name: String = "Teri"
var isFool: Bool = false

/**
type: 이 값이 어떤 종류인지 분류하는 것.
// Swift Basic Types: String, Int, Float, Double, Bool
직접 타입을 만들려면: struct, class, enum
// :는 type 선언(규칙 정하기), =는 값을 대입하기.
// type을 생략하고 =만 써도 되지만, 혼동을 방지하기 위해 써주는 것이 좋음(ex. Int, double).
// Float는 소수점 약 6~7자리까지 정확, 32비트 
// double은 소수점 약 15~17자리까지 정확, 64비트
*/

// protocol: 이 타입이 되려면 반드시 갖춰야 할 조건

/**

UpperCamelCase: type, protocol 
struct Speaker { }      // 새로운 타입
class Cat { }            // 새로운 타입
enum Macbook { }         // 새로운 타입
protocol View { }        // 프로토콜
struct ContentView: View { }   // 타입

lowerCamelCase: 그 외 전부
*/

var teri: String = "키는 171.8이구요 몸무게는 99.9 키로구요 이름은 Teri인데 바보는 아니구요 나이는 30인 사람입니다."

// 객체지향 프로그래밍: 우리의 실생활을 전부 코드 나타내는 것 => Data Modeling

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

// enum은 case로 미리 정해진 몇가지 중 하나만 될 수 있을때. -> enum은 메뉴판, case는 메뉴


var teriMacbook: Macbook = .air
var teriSpeaker: Speaker = .jbl

print(teriMacbook.battery) // 80%
teriSpeaker.turnOn()
teriSpeaker.turnOff()


// 나만의 타입 만들기
// 방법1) struct
// 방법2) class

struct Speaker {
  var isOn: Bool = false

  func turnOn() {
    isOn = true
  }

  func turnOff() {
    isOn = false
  }
}

var teriJBL: Speaker = Speaker()
print(teriJBL.isOn) // false
teriJBL.turnOn()
print(teriJBL.isOn) // true


/** 
**비교연산자**
a == b 
// a와 b가 같으면 true를 반환합니다. 
a != b
// a와 b가 같지 않으면 true를 반환합니다. 
