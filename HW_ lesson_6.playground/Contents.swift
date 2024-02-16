/*
 Создайте два массива. Первый от 0 до 14, второй от 14 до 30. Объедините их в один
 массив.
 */

let numbers1 = Array(0...13)
let numbers2 = Array(14...30)

let numbers3 = numbers1 + numbers2

print(numbers3)
print()
/*
 Создать функцию, которая принимает массив int. Возвести все Int в квадрат.
 Возвратить новый массив.
 */

func squareNumbers(array: [Int]) -> [Int] {
    var newArray = [Int]()
    for number in array {
        let square = number * number
        newArray.append(square)
    }
    return newArray
}

let result = squareNumbers(array: [3, 4, 5])
print(result)
print()
/*
 Создать функцию, которая принимает массив int. Возвратить новый массив с только
 четными элементами.
 */

func evenNumbers(_ array: [Int]) -> [Int] {
    var newArray = [Int]()
    for number in array {
        if number % 2 == 0 {
            newArray.append(number)
        }
    }
    return newArray
}

let result2 = evenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print(result2)
print()

/*
 Написать 3 примера с использованием .map
 */

let numbers = [5, 6, 7]
let squareNumbers = numbers.map { $0 * $0 }
print(squareNumbers)
print()


let names = ["diana", "karina", "john"]
let uppercasedNames = names.map { $0.uppercased()}
print(uppercasedNames)
print()


let letterCount = names.map { $0.count }
print(letterCount)
print()

/*
 Написать 2 примера с использованием .filter
 */

let someNumbers = [34, 55, 43, 88, 56]
let evenNumbers = someNumbers.filter { $0 % 2 == 0 }
print(evenNumbers)
print()


let words = ["table", "chair", "macbook", "sofa"]
let filteredWords = words.filter { $0.contains("o")}
print(filteredWords)
print()

/*
 Написать 2 примера с использованием .compactMap
 */

let someNumbers2 = ["one", "2", "3", "fore", "5"]
let transformedNumbers = someNumbers2.compactMap { Int($0)}
print(transformedNumbers)
print()

let someWords: [String?] = ["one", nil, "three", "fore", nil]
let transformedWords = someWords.compactMap { $0 }
print(transformedWords)
print()

/*
 Написать 2 примера с .sort
 */

var nameList = ["Stephan", "Bob", "Anderson", "Kate", "Paul"]
nameList.sort()
print(nameList)
print()


var nums = [5, 4, 87, 43, 8, 9, 65]
nums.sort(by: >)
print(nums)
print()

/*
 Написать 2 примера с .sorted
 */

let food = ["cake", "icecream", "soup", "tea", "bread"]
let sortedFood = food.sorted { $0.count > $1.count }
print(sortedFood)
print()

let nameList2 = ["Stephan", "Bob", "Anderson", "Kate", "Paul"]
let newNameList2 = nameList.sorted()
print(newNameList2)
print()
