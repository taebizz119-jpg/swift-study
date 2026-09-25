//Making Speaker

/**
#Property = type안에 들어있는 변수/상수.

```swift
struct Speaker {
    var isOn: Bool = false     // ← 이게 프로퍼티
    var brand: String = "JBL"  // ← 이것도 프로퍼티
    var volume: Int = 50       // ← 이것도 프로퍼티
}
```

프로퍼티에는 
1) 저장 프로퍼티; 실제 값을 직접 저장함
2) 계산 프로퍼티; 실제 값을 저장하지 않고 호출할때마다 계산해서 알려줌. 
이렇게 두 유형이 있음.

*/

/**
init : "초기화(initialize)"의 줄임말. 인스턴스를 만들 때 딱 한 번 실행되는 특별한 함수.
"이 물건이 처음 만들어질 때, 프로퍼티들에 어떤 값을 넣어줄지" 정하는 자리

class에서는 init이 거의 항상 필요해요
*/



// 나만의 타입 만들기
Apple의 공식 권장: "일단 struct로 시작하고, class가 꼭 필요한 이유가 생기면 그때 바꿔라."

/**

# 방법1) struct = 관련된 정보들을 하나로 묶는 설계도.

```swift
struct Speaker {
    var isOn: Bool = false
    
    mutating func turnOn() {
        isOn = true
    }
    mutating func turnOff() {
        isOn = false
    }
}
```

Speaker() = 생성자 호출 = 인스턴스 만들기
struct Speaker { } → 설계도
Speaker() → 그 설계도로 진짜 물건(인스턴스) 하나를 찍어냄

---

## mutating이란?
struct(값 타입) 안에서, **"이 함수는 자기 자신(self)의 프로퍼티를 실제로 바꿀 것이다"**라고 미리 알려주는 허락 표시.
```swift
struct Speaker {
    var isOn: Bool = false
    
    func checkStatus() -> String {   // 읽기만 함 → mutating 필요 없음
        return isOn ? "켜짐" : "꺼짐"
    }
    
    mutating func turnOn() {          // 값을 바꿈 → mutating 필요함
        isOn = true
    }
}
```

읽기만 한다 → mutating 필요 없음
바꾼다 → mutating 필요함

struct는 값 타입이라, 프로퍼티를 바꾸는 건 값 전체를 바꿔치기하는 것과 같음.
wift가 "의도적인 변경인지" 명확히 표시하라고 요구함.

주의: let으로 선언하면 mutating 메서드 호출 불가
*/

// 방법2) class

struct vs class — 핵심 차이: 복사냐, 공유냐
struct = 값 타입 (Value Type) — 복사됨
swift
struct Speaker {
    var isOn: Bool = false
}

var speaker1 = Speaker()
var speaker2 = speaker1   // 복사본 생성

speaker2.isOn = true

print(speaker1.isOn)   // false ← 안 바뀜!
print(speaker2.isOn)   // true
class = 참조 타입 (Reference Type) — 공유됨
swift
class Speaker {
    var isOn: Bool = false
}

var speaker1 = Speaker()
var speaker2 = speaker1   // 같은 물건을 가리키는 두 번째 이름표

speaker2.isOn = true

print(speaker1.isOn)   // true ← 같이 바뀜!
print(speaker2.isOn)   // true
비유
struct = 종이 문서를 복사하는 것 (복사본에 낙서해도 원본은 그대로)
class = 같은 문서 링크를 공유하는 것 (누가 수정하면 모두에게 반영)

var teriSpeaker: Speaker = .jbl

teriSpeaker.turnOn()
teriSpeaker.turnOff()



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

struct Macbook {
    var battery: Int = 100
    
    mutating func useBattery(amount: Int) {
        battery -= amount
    }
}

class Speaker {
    var isOn: Bool = false
    
    func turnOn() { isOn = true }
    func turnOff() { isOn = false }
}

// struct는 복사됨
var myMac = Macbook()
var friendMac = myMac
friendMac.useBattery(amount: 20)
print(myMac.battery)      // 100  (안 바뀜)
print(friendMac.battery)  // 80

// class는 공유됨
var mySpeaker = Speaker()
var sameSpeaker = mySpeaker
sameSpeaker.turnOn()
print(mySpeaker.isOn)     // true (같이 바뀜)
print(sameSpeaker.isOn)   // true

