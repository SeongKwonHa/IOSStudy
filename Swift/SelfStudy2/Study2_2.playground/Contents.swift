// 배열 테스트

var toDoArray: Array<String> = ["Travel", "Work", "Call"]
var evenNumber: [Int] = [2, 4, 6, 8]

toDoArray[0] = "Play"
toDoArray[1]
toDoArray[2]

evenNumber.append(10)
evenNumber.insert(12, at: 0)
evenNumber.remove(at: 0)
print(evenNumber)

for toDo in toDoArray{
    print(toDo)
}


// 딕셔너리

var toDoDic2: Dictionary<String, String> = ["17": "Play", "25": "Watch Movies", "28": "Travel"]
var toDoDic = ["17": "Play", "25": "Watch Movies", "28":"Travel"]

toDoDic["17"]

toDoDic["31"] = ""
print(toDoDic)

toDoDic.removeValue(forKey: "31")
print(toDoDic)

toDoDic["28"] = nil
toDoDic.removeAll()
print(toDoDic)

for (key, value) in toDoDic {
    print("key: \(key), valude: \(value)")
}

for key in toDoDic.keys{
    print(key)
}

for value in toDoDic.values{
    print(value)
}
