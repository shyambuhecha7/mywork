import UIKit

/*
 1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.
    Output: for example, your class Demo has one property of string type then you can be able to set it within a class. If I try set it outside of class it must give an error.
*/
class Demo {
    var name : String {
        return "Shyam"
    }
}

var demo = Demo()
//demo.name = "fdklkfmls" //we can not set a value because it get only property
demo.name

/*
 2)  Create a swift program to demonstrate usage of computed properties using getter and setter.
 */
struct ComputedProperty {
    var value : Int
    
    var computedValue : Int {
        get {
            return value
        }
        set {
            self.value = newValue
        }
    }
}
var object = ComputedProperty(value: 20)
print(object.computedValue)
object.computedValue = 25
print(object.value)

/*
 3)  Create a swift program to show usage of stored properties.
 */
struct StudentProfile {
    var studentName : String
    var department : String
}

var firstStudent = StudentProfile(studentName: "Joe", department: "Computer Engineering")
firstStudent.studentName
firstStudent.department

//4) Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.
@propertyWrapper
struct ATM {
    private var username : String = "user@123"
    var wrappedValue : String {
        get {
           return username
        }
        set {
           username = newValue
        }
    }
}
var atm = ATM()
print(atm.wrappedValue)

atm.wrappedValue = "user@2023"
print(atm.wrappedValue)

/*
5)  Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types.
    Output: My class is Person and properties are id and name, then create an array of person. And print all elements of that array.
*/
class Person {
    var name : String
    var id : Int
    
    init(name : String, id : Int) {
        self.name = name
        self.id = id
    }
}
var person1 = Person(name: "Shyam", id: 123)
var person2 = Person(name: "Darshan", id: 345)
var person3 = Person(name: "Subham", id: 678)

var person : [Person] = [person1, person2, person3]

for index in person {
    print("id : \(index.id) name : \(index.name)")
}

//6)  Create one example of usage of willSet and didSet
class Fruit{
    var fruitName : String = "Mango" {
        willSet{
            print("before fruit name : \(fruitName)")
        }
        didSet{
            print("after set fruit name : \(fruitName)")
        }
    }
}

var mango = Fruit()
mango.fruitName = "Mango"
//before fruit name : Mango
//after set fruit name : Mango
mango.fruitName = "banana"
//before fruit name : Mango
//after set fruit name : banana

//7)  Create one lazy stored property in a class and show usage of it.
class Calculator {
    var number = 10
    lazy var powerOfNumber : Int = {
        return number * number
    }()
}
var powerOfNumber = Calculator()
print(powerOfNumber.powerOfNumber)

//8)  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.
class BasePerson {
    var name : String
    var occupation : String
    
    init(name : String, occupation : String) {
        self.name = name
        self.occupation = occupation
    }
}

class Student : BasePerson {
    var college : String
    
    init(college : String) {
        self.college = college
        super.init(name: "Shyam", occupation: "Student")
    }
}

class Employee : BasePerson {
    var company : String
    
    init(company : String) {
        self.company = company
        super.init(name: "Ram", occupation: "Software Engineer")
    }
}

let student = Student(college: "Gec-Rajkot")
print("Name : \(student.name) - Occupation : \(student.occupation) -  College : \(student.college)")

let employee = Employee(company: "Simform")
print("Name :\(employee.name) - Occupation : \(employee.occupation) - Employee : \(employee.company)")

//9)Create one structure to show usage of mutating function in swift
struct Road {
    var length = 10
    mutating func changeRoadLength() {
        length = 30
    }
}
var road = Road()
print("Before Changing Length : \(road.length)")
road.changeRoadLength()
print("After Changing Length : \(road.length)")

//10)Create one class inheritance demo to show usage of method overriding.
class Addition {
    func add(number1 : Int, number2 : Int) {
        print("Addition : \(number1 + number2)")
    }
}

class AddTwo : Addition {
    override func add(number1: Int, number2: Int) {
        print("Addition : \(number1 + number2)")
    }
}

//11)Create one swift class to show usage of type methods.
class TypeMethod {
    static func printFullname(fullname : String) {
        print(fullname)
    }
}

TypeMethod.printFullname(fullname: "Shyam Buhecha")

//12)Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)
class ClassVsStatic {
    
    class func drink() {
        print("he id drink a tea")
    }
    
    static func eat() {
        print("he is eat a watermalon")
    }
}

class OverideClass : ClassVsStatic {
    //class method can overide
    override class func drink() {
        print("Joe is drink a tea")
    }
    
    //error : static method is not override
    // override static func eat() { }
}

//13)Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.  Output: WeekDays.subscript(day: 1) // will return Sunday Note: Handle invalid input.
class WeekDays {
    var weekArray = ["sun", "mon", "tue", "wed", "thurs", "fri", "sat"]
    
    subscript(day : Int) -> String {
        switch day {
        case 1 :
            return weekArray[0]
        case 2 :
            return weekArray[1]
        case 3 :
            return weekArray[2]
        case 4 :
            return weekArray[3]
        case 5 :
            return weekArray[4]
        case 6 :
            return weekArray[5]
        default :
            return weekArray[6]
        }
    }
}

var day = WeekDays()
day[1]
print(day[1])

//14)Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.

struct Position {
    var string = "abcdefghij"
    
    subscript(index : Int) -> Character {
        var stringIndex = string.index(string.startIndex, offsetBy: index)
        return string[stringIndex]
    }
}

var character = Position()
character[3]
print(character[3])

//15)  Create one swift subscript program which takes range as input and returns the string between the ranges.
struct Word {
    var word = "abcdefghijklmnopqrs"
    var from : Int
    var to : Int
    subscript(from : Int, to : Int) -> String {
        var from = word.index(word.startIndex, offsetBy: from)
        var to = word.index(word.startIndex, offsetBy: to)
        return String(word[from...to])
    }
}

var word = Word(from: 2, to: 6)
word[2,5]
print(word[2,5])

//16)  I have one integer array and create one function which takes range as input and returns all elements between the range.
//class SubArray {
//
//    var array = [1,2,4,32,5,1,5,78,6]
//
//    func subarray(range : Range<3...5>) -> [Int] {
//
//    }
//}

/*
 17)  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.
 •    Output: let array = [[1: “Hello”], [2: “Hi..”]] Now call function subscript(at: 1) it should print "Hello”
 */
//class Pair {
//    let array = [[1: "Hello"], [2: "Hi.."]]
//
//    subscript(index : Int) -> String {
//        for i in array {
//
//        }
//    }
//}

//    •    18)  Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.

//    •    19)  Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer

//    •    20)  Create a swift class with properties which can be read-write outside of class.

