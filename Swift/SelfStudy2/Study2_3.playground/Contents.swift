// 다양한 형태 함수 테스트
func hello(name: String) -> String {
    return "Hello~ " + name
}

let message = hello(name: "성권")


print("Hi~~")
print(124)
print(message)

func addTwoNumbers(num1: Int, num2: Int = 100) -> Int {
    let sum = num1 + num2
    return sum
}

addTwoNumbers(num1: 5, num2: 10)
addTwoNumbers(num1: 5)

func addNumbers(numbers: Int...) -> Int {
    var sum = 0
    for num in numbers{
        sum += num
    }
    return sum
}

addNumbers(numbers: 1, 2, 3, 4, 5)

func myInfo() -> (name: String, weight: Int) {
    return ("무게", 60)
}

let info = myInfo()
print(info.name)
print(info)


//print 테스트
print(123, "Hello", true, 123.345, separator: "--------", terminator:"")


// scope
/* var: 변수, 초기화 후 변화 가능, let: 상수, 초기화 후 변화 불가능 */


// Argument lable 테스트
/* 알규먼트에 설명을 붙여줌. 생략가능*/

func calculate(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}

func calculate(diviedFirstNumber num1: Int, bySecondNumber num2: Int) -> Int {
    return num1 * num2
}

calculate(10, 10)


// inout keyword 테스트
/* 매개변수는 상수로 들어온다. 하지만 inout을 넣으면 변수로 들어옴 */

func addTwoNumber2(num1: Int, num2: inout Int) -> Int {
    num2 = 7
    return num1 + num2
}

var test1 = 1
var test2 = 2


addTwoNumber2(num1: test1, num2: &test2)
print(test2)




