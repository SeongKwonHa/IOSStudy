
// 연산자 테스트

var weight = 105

weight += 10
weight -= 10
weight %= 10
weight = weight / 10

let age = 10
let isAdult = age >= 20
let 중1 = age == 14

let 초등학생 = age>=8 && age <= 13


// 조건문 테스트

let dust = 25

if dust <= 30 {
    print("아 공기 상쾌하다~")
}
else if dust > 30 && dust <= 50{
    print ("뭐 이정도면 괜찮네")
}
else if dust > 50 && dust <= 10{
    print ("아 안좋아...")
}
else {
    print("헉 최악이다 ㅠㅠ")
}

/* switch 는 swift에서 좀다르다.
 break 없어도 되고, default가 없으면 에러남, case에 여러조건문 가능.*/

let weather = "비"
switch weather {
case "맑음":
    print("☀️")
case "흐림":
    print("🌥")
case "비", "장마", "소나기":
    print("🌨")
case "눈":
    print("❄️")
default:
    print("🌤")
}

// 반복문 테스트

/* 범위연산자 ... 띄워쓰기 양쪽 맞춰야함*/
for i in 1...10{
    print(i)
}

for i in stride(from:1, to: 10, by: 2){
    print(i)
}

for i in stride(from: 10, to: 1, by: -2){
    print(i)
}

for j in 2...9{
    print("\(j)단 시작")
    for i in 1...9{
//        print(String(j) + " X " + String(i) + " = " + String(j*i))
        print("\(j) X \(i) = \(j * i)")
    }
}

var i = 0
while i < 10 {
    i += 1
    print(i)
}

i = 0
repeat {
    i += 1
    print(i)
} while i < 10

