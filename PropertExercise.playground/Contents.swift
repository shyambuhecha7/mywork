import UIKit

/*
 1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.
    Output: for example, your class Demo has one property of string type then you can be able to set it within a class. If I try set it outside of class it must give an error.
*/
class Demo {
    var name: String {
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
    var value: Int
    
    var computedValue: Int  {
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
    var studentName: String
    var department: String
}

var firstStudent = StudentProfile(studentName: "Joe", department: "Computer Engineering")
firstStudent.studentName
firstStudent.department

//4) Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.
@propertyWrapper
struct ATM {
    private var username: String = "user@123"
    var wrappedValue: String {
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
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
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

// 20)  Create a swift class with properties which can be read-write outside of class.
class Job {
    var jobProfile: String
    var company: String
    
    init(jobpProfile: String, company: String) {
        self.jobProfile = jobpProfile
        self.company = company
    }
}

var role = Job(jobpProfile: " ", company: " ")
//set
role.jobProfile = "Native Mobile"
role.company = "Simform"

//read
print(role.jobProfile)
print(role.company)
