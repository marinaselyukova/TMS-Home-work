/*
  1. Написать функцию, которая:
  - Будет просто выводить в консоль ”Hello, world!”
  - Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
  должен быть следующим - printHi(“Misha”)).
  - Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”
  .*/

func printHello() {
    print("Hello, world!")
}
printHello()


func printHi(_ name: String) {
   print("Hello, \(name)!")
}
printHi("Misha")


func printGreeting(_ name: String) -> String {
    return "Hello, \(name)!"
}

let greeting = printGreeting("Katya")
print(greeting)

print()

/*
 2. Написать функцию, которая принимает две строки и возвращает сумму количества
 символов двух строк.
 */

func countSymbols(_ string1: String, _ string2: String) -> Int {
    let firstString = string1.count
    let secondString = string2.count
    return firstString + secondString
}

let result = countSymbols("Изучааю", "Swift")
print(result)

print()

 /*
 3. Написать функцию, которая выводит в консоль квадрат переданного числа.
  */

func printSquareNumber(_ number: Int) {
    let result = number * number
    print("Квадрат числа \(number) равен \(result)")
}

printSquareNumber(5)

print()

/*
 4. Создать функции, которые будут суммировать, вычитать, умножать и делить числа
 sum(num1:num2:).
 */

func sum(num1: Int, num2: Int) -> Int {
   return num1 + num2
}

print(sum(num1: 5, num2: 3))


func substruct(num1: Int, num2: Int) -> Int {
   return num1 - num2
}

print(substruct(num1: 10, num2: 4))


func multiply(num1: Int, num2: Int) -> Int {
   return num1 * num2
}

print(multiply(num1: 6, num2: 7))


func divide(num1: Int, num2: Int) -> Double {
   return Double(num1 / num2)
}

print(divide(num1: 10, num2: 3))

print()


/*
 5. Создать функцию, которая принимает параметры и вычисляет площадь круга.
 */

func circleArea(radius: Int) -> Int {
    return Int(Double.pi * Double(radius * radius))
}

print(circleArea(radius: 7))

print()

/*
 6. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
 строку с описанием времени суток.
 */

func timeOfDay(isNight: Bool) -> String {
    if isNight == true {
        return "Сейчас ночь"
    } else {
        return "Сейчас день"
    }
}

let isNight = timeOfDay(isNight: true)
print(isNight)

print()

/*
 7. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
 true, если оно простое, и false, если сложное.
 */

func isPrime(number: Int) -> Bool {
    guard number >= 2 else { return false }
  
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
        return true
}

print(isPrime(number: 2))
    
print()

    
/*
 8. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
 возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
 осень).
 */

func printTimeOfYear(month: Int) -> String {
    switch month {
    case 1...2, 12:
        return "Зима"
    case 3...5:
        return "Весна"
    case 6...8:
        return "Лето"
    case 9...11:
        return "Осень"
    default:
        return "Введен неверный номер месяца"
    }
}

print(printTimeOfYear(month: 6))

print()

/*
 9*. Создать функцию, которая считает факториал введённого числа.
 */

func factorial(number: Int) -> Int {
    if number == 0 {
        return 1
    } else {
       return (number * factorial(number: number - 1))
    }
}

print(factorial(number: 5))

/*
 10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
 введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8
 */

/*
 11*.Создать функцию, которая считает сумму цифр четырехзначного числа,
 переданного в параметры функции
 */
