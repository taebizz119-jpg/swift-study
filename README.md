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

## 26/08/29 Today I Learned
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

# 26/09/03 Today I Learned

- Initializer(생성자): 타입 이름에 괄호를 붙여서 바로 만드는 것
- Factory Method: 뭔가를 만들어서 돌려주는 메서드 // let iterator = array.makeIterator()
  팩토리 메서드는 make 로 시작하기  -> // x.makeIterator()
- 생성자는 "이 타입 자체를 직접 만든다"는 느낌
  팩토리 메서드는 "기존 것을 바탕으로, 다른 종류의 물건을 만들어낸다"는 느낌
- 일반적인 code method는 "함수 이름은 영어 문장처럼 읽히게 하라" 이지만, Initializer, Factory Method는 이 규칙에서 예외임. 필요한 정보를 깔끔하게 나열하기.
  

- side effect(값을 돌려주는 것 외에 추가로 뭔가를 변화시킨다)에 따라 동사/명사를 구분하기.
- side effect가 없을 시 -> 명사처럼 사용.  x.distance(to: y) // 거리를 계산해서 "돌려줌"
- side effect 있을 시 -> 동사 명령형처럼 사용.  x.sort() x // 자체를 정렬해버림   x.append(y) // x 자체가 바뀜
- mutating (원본을 바꿈) -> 동사 명령형      nonmutating (원본은 그대로 두고, 새 값을 돌려줌) -> -ed/-ing
  명사가 기본일 때는 반대로, nonmutating이 명사 그대로이고 mutating에 form-을 붙임
  nonmutating x.union(z)  ->  x.formUnion(Z) mutating
- Bool은 "-이다" 처럼 읽히게.
  is -이다, -한 상태다	isEmpty, isSparkle, isHidden
  has~	-을 가지고 있다	hasChanges, hasPermission
  can~	-할 수 있다	canWrite, canDelete
  should~	-해야 한다	shouldUpdate
  동사 3인칭	-한다	contains(), intersects()

## 26/09/08 Today I Learned
- 인자 레이블 (argument label):	호출할 때 밖에서 보이는 이름	// from, to
- 매개변수 이름 (parameter name):	함수 안에서 쓰는 이름	 // source, target

func move(from source: Int, to target: Int) {
print(source, target)
}

move(from: 1, to: 5)

- 하나만 쓰면 안팎으로 쓰임.
func move(from: Int) {
print(from)
}

- _(언더바)를 레이블 자리에 쓰면 레이블 없음이 됨.
  func double(_number: Int) -> Int { number * 2}

  double(5)
  
- 인자들이 서로 구분이 필요 없나? : (min, max 같은)	생략
-	값을 보존하는 타입 변환인가? :	생략
-	첫 인자가 전치사구 일부인가? :	레이블 붙임 (전치사부터)
-	함수이름+첫인자가 자연스러운 문장인가? :	생략
-	위에 다 해당 안 됨	: 레이블 붙임
  
