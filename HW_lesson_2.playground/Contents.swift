

/*2. Написать переменные и константы всех базовых типов данных: Int, Bool, Float,
Double, String. У чисел вывести их минимальные и максимальные значения (Int8/16…
UInt…), а у строки – количество символов.*/

var intNumber: Int = 1
let string: String = "Hello"
let char: Character = "!"
let floatNumber: Float = 2.1
var doubleNumber: Double = 3.14
let boolValue: Bool = true


// Минимальные и максимальные значения надеюсь так нужно было сделать?
Int.max
print("Int: Минимальное значение - \(Int.min), Максимальное значение - \(Int.max)")

Int8.min
Int8.max
print("Int8: Минимальное значение - \(Int8.min), Максимальное значение - \(Int8.max)")

Int16.min
Int16.max
print("Int16: Минимальное значение - \(Int16.min), Максимальное значение - \(Int16.max)")

Int32.min
Int32.max
print("Int32: Минимальное значение - \(Int32.min), Максимальное значение - \(Int32.max)")

UInt8.min
UInt8.max
print("UInt8: Минимальное значение - \(UInt8.min), Максимальное значение - \(UInt8.max)")

UInt64.min
UInt64.max
print("UInt64: Минимальное значение - \(UInt64.min), Максимальное значение - \(UInt64.max)")

let stringLength = string.count
print("Количество символов в слове \(string) равно \(stringLength)")

print()


/*3. Написать различные выражения с приведением типа. Минимум 8 выражений.*/

var sum1: Int = intNumber + Int(floatNumber)
let sum2: Float = Float(intNumber) + floatNumber
let sum3: Double = doubleNumber * Double(floatNumber)
var myString: String = String(char)
let myString2: String = string + String(char)
doubleNumber = Double(floatNumber)
myString = String(intNumber)
sum1 = Int(sum2)


/* 4. Произвести различные вычисления с математическими операторами (умножение,
деление, сложение, вычитание). Выводить результат в консоль в таком виде: 3
+ 2 = 5 (использовать интерполяцию строк).*/

let num1: Int = 10
let num2: Int = 6

print("\(num1) + \(num2) = \(num1 + num2)")
print("\(num1) - \(num2) = \(num1 - num2)")
print("\(num1) / \(num2) = \(num1 / num2)")
print("\(num1) * \(num2) = \(num1 * num2)")

print()


/* 5. С помощью if-else необходимо вывести в консоль, ночь ли сегодня (isNight).*/

var isNight: Bool = true

if isNight == true {
    print("Сейчас ночь")
} else {
    print("Сейчас день")
}
print()


/* 6. Дана строка, сделать копию этой строки. Вывести копию строки в консоль. Помним,
 что строка – это коллекция символов, по которым можно "пробегаться". Решение let
 str2 = str1; print(str2) не принимается. */

var firstString: String = "Hello!"
var secondString = ""

for char in firstString {
    secondString.append(char)
}
print(secondString)
print()


/* 7. Сделать проверку: является ли число четным: 13, 2, 20, 21, 76.*/

let numbers: [Int] = [13, 2, 20, 21, 76]

for number in numbers {
    if number % 2 == 0 {
        print("\(number) четное число")
    } else {
        print("\(number) нечетное число")
    }
}
print()


/*8. В переменной day лежит какое-то число от 1 до 31 (вы задаете сами любое).
Определить, в какую декаду месяца попадает это число (в первую, вторую или
третью).*/

let day: Int = 19

switch day {
case 1...10:
    print("Первая декада месяца")
case 11...20:
    print("Вторая декада месяца")
case 21...31:
    print("Третья декада месяца")
default:
    print("Введена неверная дата")
}
print()


/*9. Дана строка, состоящая из символов, например, “bbppeeyy”
. Проверить, что первым символом этой строки является буква “a” (или любая другая). Если это так –
вывести 'да', в противном случае - ‘нет’
. Затем поменяйте строку, чтобы условие соблюдалось. Поэкспериментируйте с разными строками.*/

let str: String = "Аптека"

if str.hasPrefix("А") {
    print("Да")
} else {
    print("Нет")
}
print()


/*10. Вывести таблицу умножения в консоль с помощью циклов for in. */

for a in 2...9 {
    for b in 1...9 {
        print("\(a) * \(b) = \(a * b)")
    }
    print()
}
