// Class 테스트

class Circle {
    var radius : Double
    let pi = 3.1415926535
    
    init() {
        radius = 10.0
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return radius * radius * pi
    }
}

let circle = Circle.init(radius: 20)
circle.area()

// 변수 상수 만들기 테스트
/* 리터럴로 생성, 생성자로 생성*/
var weight = Int(65)
var message = String.init("Hello")

var evenNumber = [Int].init(arrayLiteral: 2, 4, 6, 8)
var oddNumbers = Array<Int>()


// 클래스 상속, Override 테스트

class NoteBook{
    var name = ""
    
    func turnOn(){
        print("Booting...")
    }
}

class MacBook: NoteBook{
    var hasTouchBar = true
    var macOSVersion = "10.1"
    
    override func turnOn() {
        super.turnOn()
        print("\(name)'s currnet macOSVersion is \(macOSVersion)")
    }
    
}

let macBook = MacBook()
macBook.name = "MacBook Pro"
macBook.turnOn()

// 클래스 구조체의 공통점 차이점
/* 클래스 : 참조 타입, 구조체: 값 타입
 var circle1 = Circle()
 var circle2 = circle1
 circle2.radius = 10
 => 클래스는 1,2 같아짐, 구조체는 다름.*/
