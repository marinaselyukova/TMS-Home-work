/*
 Создать объект “Школа” со свойствами: массив учеников, название школы, адрес (адрес -
 новый объект с координатами x, y, street name) и директор (у директора новые поля:
 experience, рейтинг. Директор наследуется от класса Person (name:surname:age)).
 У ученика хранить имя, фамилию, номер класса, кортеж “название предмета - оценка”
 . Ученик
 наследуется от Person.
 У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к
 некоторым из них.
 Написать метод для ученика, выводящий информацию о студенте в формате
 “Фамилия Имя (Класс)
 предмет: оценка
 предмет: оценка”
 .
 Написать метод для школы, который выводит информацию о школе.
 Уделите особое внимание выбору, что использовать: класс или структуру, var или let, MARK +
 модификаторы доступа.
 */


class Person {
    let name: String
    let surname: String
    let age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
    
    func printInfo() {
        print("\(surname) \(name) - \(age) years old")
    }
}


class Student: Person {
    let className: String
    var subject: [(subjectName: String, mark: Int)]
    
    init(name: String, surname: String, age: Int, className: String, subject: [(subjectName: String, mark: Int)] = []) {
        self.className = className
        self.subject = subject
        super.init(name: name, surname: surname, age: age)
    }
    
    override func printInfo() {
        super.printInfo()
        print("Class: \(className)")
        for subject in subject {
            print("\(subject.subjectName): \(subject.mark)")
        }
    }
}


class Director: Person {
    let experience: Int
    let rating: Double
    
    init(name: String, surname: String, age: Int, experience: Int, rating: Double) {
        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
    
    override func printInfo() {
        super.printInfo()
        print("Experience: \(experience) years")
        print("Rating: \(rating)")
    }
}


struct Address {
    let x: Double
    let y: Double
    let streetName: String
}


class School {
    var students: [Student]
    let name: String
    let address: Address
    let director: Director
    
    init(students: [Student], name: String, address: Address, director: Director) {
        self.students = students
        self.name = name
        self.address = address
        self.director = director
    }
    
    func printInfo() {
        print("School Name: \(name)")
        print("Address: \(address.streetName), X: \(address.x), Y: \(address.y)")
        print("Director:")
        director.printInfo()
        print("Students:")
        for student in students {
            student.printInfo()
        }
    }
}


let director = Director(name: "Oleg", surname: "Petrov", age: 50, experience: 20, rating: 4.8)
let student1 = Student(name: "Sveta", surname: "Ivanova", age: 16, className: "10A", subject: [("Math", 95), ("History", 83)])
let student2 = Student(name: "Ivan", surname: "Sidorov", age: 15, className: "10A", subject: [("Math", 90), ("History", 80)])
let student3 = Student(name: "Olesya", surname: "Orlovav", age: 15, className: "10A", subject: [("Math", 78), ("History", 98)])
let schoolAddress = Address(x: 121.45, y: 78.89, streetName: "Panfilov")
let school = School(students: [student1, student2, student3], name: "School N29", address: schoolAddress, director: director)

school.printInfo()
