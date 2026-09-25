//Making Speaker





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
