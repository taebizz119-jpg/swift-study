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
- 


