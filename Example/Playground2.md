# Swift PlayGround_Today I Learned
## 26.09.29

> 유형(Type)
- struct, class, enum으로 만드는 틀의 설계도.
- Int, String, Bool, Double, Float 등...

```swift
struct Dog {
  var name: String
  var age: Int
}
/// Dog가 Type

> 인스턴스(Instance)
```swift
let bori = Dog(name: "보리", age: 16)
let coco = Dog(name: "코코, age: 5)
///  bori, coco가 Instance
```

> 선언(Declaration)
```swift
struct Dog { ... } // 유형 선언. Type Declaration.
let bori = Dog(...) // 상수 선언.
var count = 0 //  변수 선언
func bark() { ... } // 함수 선언
```

> 메소드(Method)
- 유형 안에 들어있는 함수. 그 유형의 인스턴트가 할 수 있는 행동.
```swift
struct Dog {
  var name: String
  var age: Int

  func bark() {  //메소드
    print("\(name): 멍멍")
  }
}

let bori = Dog(name: "보리", age: 16)

bori.bark() // "보리: 멍멍!"
```
bark() -> 메소드 (Dog라는 Type안에 있으니까. 만약에 Type 밖에 존재한다면, 그건 함수)
bori -> Instance


> 초기화(Initialization)
- Instance를 만들 때, 모든 property에 처음 값을 채워 넣는 것.
``` swift
struct Dog {
  var name: String     // property(Dog이라는 Type 안에 저장되는 값)
  var age: Int         // property

  init(name: String, age: Int) {
    self.name = name
    self.age // property = age // parameter
  }
}
```
- 프로퍼티 `name`: 인스턴스 안에 저장될 값
- 파라미터 `name`: init을 호출할 때 밖에서 넘겨주는 값
- self를 붙여서 프로퍼티를 가리키기.(self가 필수인 순간은 프로퍼티와 파라미터의 이름이 같을 때.)
- 인자(argument) = 호출할때 넘기는 값.
- 파라미터 = 함수를 정의할 때 괄호 안.
- 인자 = 함수를 호출할 때 괄호 안.

```swift
func greet(to name: String) {
  print("Hi, \(name)!")
]

greet(to: "bori")

func greetHello(_ name: String) { ... }
greet("bori")
```

> Self를 써야하는 경우 -> 이거 뭐지! 이해안됨.

