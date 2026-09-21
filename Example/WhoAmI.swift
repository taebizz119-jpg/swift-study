var age: Int = 30
var height: Double = 171.8
var weight: Double = 99.9
var name: String = "Teri"
var isFool: Bool = false

// Swift Basic Types: String, Int, Float, Double, Bool

var teri: String = "키는 171.8이구요 몸무게는 99.9 키로구요 이름은 Teri인데 바보는 아니구요 나이는 30인 사람입니다."

// 객체지향 프로그래밍: 우리의 실생활을 전부 코드 나타내는 것 => Data Modeling

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
