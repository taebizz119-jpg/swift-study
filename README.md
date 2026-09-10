# swift-study
## 26/08/25 Today I Learned

// 태경이가 보리에게 간식을 준다. 
// Teri gives Bori a snack 
var giver: String = "Teri" 
var receiver: String = "Bori" 
var food: String = "a snack" 

func giveFood(from giver: String, to receiver: String, what food: String = "밥") {
print("\(giver)가 \(receiver)에게 \(food)를 준다")
}

giveFood(giver: "태경이", receiver: "보리") // 태경이가 보리에게 밥을 준다.

- "\(값)" -> String 안에 (값)을 출력
- \n -> enter
- \t -> tab
- 코드를 짜기 전, 먼저 매끄러운 문장을 만들 것. 코드를 읽을 때도 매끄럽게 읽혀야 함.
- 기본값이 있는 parameter는 뒤쪽에 두세요.
- 대문자로 시작: type, Protocol

## 26/08/27 Today I Learned
[링크]([swift.org](https://www.swift.org/documentation/api-design-guidelines/))
- [Fundamentals]
- 명확하게 사용하기. 각 선언마다 문서 주석 작성하기. 요약은 문장조각으로, 마침표로 끝내기. 마크업 활용.
- 문서의 기본 구조는 빈 줄로 단락을 나눔.
- [MarkUp 문법]
- 마크업은 일반 주석이 아닌 문서 주석임. 일반주석(// 이나 /* ... */ 등)
- 한줄 주석(문서 주석): ///
- 블록 주석(문서 주석): /** ... */
- Heading: # 큰제목 ## 중간제목 ### 작은제목
- ===이나 ---으로 줄 긋기도 됨.
- 글머리 기호: -, +, * (단, 한 목록 안에서는 통일 시키기), 번호(1,2,3)
- 코드보이스(명칭?): ' ... '  -> Swift symbol 이름(nil, self, type명, parameter명)은 항상 백틱으로 감싸기
-  이탤릭(기울여진 글씨 표기): *something* or _something_ , 강조(볼드체): **something** or __something__

/// 보리는 태경이가 키우는 강아지이다.

/**
'보리'는 *푸들*입니다. **매우 귀여운** 강아지입니다.
- 보리는 16살입니다.
- 보리는 **겁이 매우 많습니다**
- 보리는 목청이 큽니다.
  
---

- 보리는 사회성이 없습니다...
*/

##

# 26/09/01 Today I Learned


