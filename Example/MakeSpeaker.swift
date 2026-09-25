//Making Speaker

var teriSpeaker: Speaker = .jbl

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

