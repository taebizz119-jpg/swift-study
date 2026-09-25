var age: Int = 30
var height: Double = 171.8
var weight: Float = 99.9
var name: String = "Teri"
var isFool: Bool = false

/**
## type
- 이 값이 어떤 종류인지 분류하는 것.
- type은 UpperCamelCase로 작성한다.
- Swift Basic Types: String, Int, Float, Double, Bool  /  직접 타입을 만들려면: struct, class, enum
- :는 type 선언(규칙 정하기), =는 값을 대입하기.
- type을 생략하고 =만 써도 되지만, 혼동을 방지하기 위해 써주는 것이 좋음(ex. Int, double).
- Float는 소수점 약 6~7자리까지 정확, 32비트 
- double은 소수점 약 15~17자리까지 정확, 64비트

- enum은 case로 미리 정해진 몇가지 중 하나만 될 수 있을때. -> enum은 메뉴판, case는 메뉴
*/

// 

/**
## UpperCamelCase: type, protocol 

protocol: 이 타입이 되려면 반드시 갖춰야 할 조건
struct Speaker { }      // 새로운 타입
class Cat { }            // 새로운 타입
enum Macbook { }         // 새로운 타입
struct ContentView: View { }   // 타입
protocol View { }        // 프로토콜

## lowerCamelCase: 그 외 전부
*/

var teri: String = "키는 171.8이구요 몸무게는 99.9 키로구요 이름은 Teri인데 바보는 아니구요 나이는 30인 사람입니다."

// 객체지향 프로그래밍: 우리의 실생활을 전부 코드 나타내는 것 => Data Modeling


**비교연산자**
a == b 
// a와 b가 같으면 true를 반환합니다. 
a != b
// a와 b가 같지 않으면 true를 반환합니다. 
