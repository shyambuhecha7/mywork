import UIKit

var greeting = "Class Exercise, playground"

//1.Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
class Swift {
    var firstValue : Int
    var secondValue : String
    
    init(firstValue : Int, secondValue : String){
        self.firstValue = firstValue
        self.secondValue = secondValue
    }
}

var swiftClassObject = Swift(firstValue: 10, secondValue: "Shyam")
//get value
print("First Value : \(swiftClassObject.firstValue)")
print("Second Value : \(swiftClassObject.secondValue)")
                                                                                                                                             
//2.Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.
class MultipleInitializer {
    var name : String
    var college : String
    var department : String
    
    init(name : String, college : String){
        self.name = name
        self.college = college
        self.department = ""
    }
    init(name : String, department : String){
        self.name = name
        self.college = ""
        self.department = department
    }
    
}

let namecollageInit = MultipleInitializer(name: "Shyam", college: "GEC - Rajkot")
print("name : \(namecollageInit.name) college : \(namecollageInit.college)")

let namedepartmentInit = MultipleInitializer(name: "Shyam", department: "Computer")
print("name : \(namecollageInit.name) department : \(namedepartmentInit.department)")

//3.Create a swift class without initializers and access (write, read) its properties using instance of class.
class WithoutInit {
    var firstName = ""
    var secondName = ""
}

var fullName = WithoutInit()
//write
fullName.firstName = "Shyam"
fullName.secondName = "Buhecha"
//read
print(fullName.firstName)
print(fullName.secondName)

//4.Create a swift class which is having code to return square of given number and access this code using class instance.
class Square {
    var number : Int
    var square : Int {
        return number*number
    }
    init(number : Int){
        self.number = number
    }
}

var numberSquare = Square(number: 5)
print("Square : \(numberSquare.square)")

//5.Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.
class BaseClass {
    var someProperty : String = "Base class property"
}

class FirstChild : BaseClass {
    var firstChildValue : String = "First Child"
}

class SecondChild : BaseClass {
    var secondChildValue : String = "Second Child"
}

var firstChild = FirstChild()
//access base clasee property using child class
print(firstChild.someProperty + "using first child")

var secondChild = SecondChild()
//access base clasee property using child class
print(secondChild.someProperty + "using second child")

//6.Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.
class Calculator {
    
    func addition(number1 : Int, number2 : Int) -> Int{
        return number1 + number2
    }
}

class Addition : Calculator {
    override func addition(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
}

var addTwoNumber = Addition()
print(addTwoNumber.addition(number1: 10, number2: 20))

/*
 7.Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
example:  let instance = Example(value: 5)
let result = instance.doPower(power: 3)
then it should return 5's 3 power (125)
*/
class Example {
    var value : Int
    
    init(value : Int){
        self.value = value
    }
    
    func doPower(power : Int) -> Int{
        var answer = 1
        for _ in 1...power{
           answer *= value
        }
        return answer
    }
}
let instance = Example(value: 5)
let result = instance.doPower(power: 3)
print(result)

//8.Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
class Vehicles {
    var vehicleName : String
    var wheels : Int
    
    init(vehicleName : String, wheels : Int){
        self.vehicleName = vehicleName
        self.wheels = wheels
    }
    func riding(vehicle : String){
        print("\(vehicle) is riding")
    }
}

class Bike : Vehicles {
    var bikeColor : String = "Black"
}

class Car : Vehicles {
    var carColor : String = "White"
}

var hondaBike = Bike(vehicleName: "Honda", wheels: 2)
hondaBike.vehicleName
hondaBike.bikeColor
hondaBike.wheels
hondaBike.riding(vehicle: hondaBike.vehicleName)

var audiCar = Car(vehicleName: "Audi", wheels: 4)
audiCar.vehicleName
audiCar.carColor
audiCar.wheels
audiCar.riding(vehicle: audiCar.vehicleName)

/*
 9.Create a person swift class with person name initializer and create one function to greet that person.
 Example: let person1 = Person(name: Joe)
   Person1.greet() // This should print “Hello Joe”
 */
class Person {
    var name : String
    
    init(name : String) {
        self.name = name
    }
    func greet(){
        print("Hello \(name)")
    }
}

let person1 = Person(name: "Joe")
person1.greet()

/*
 10.•    Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
 let example1 = Example()
 Example1.a = “Hello”
 let example2 = example1
 example2.a = “Hi”
 print(example1.a)
 print(example2.a)
 // Consider ‘a’ as string property of example class.
 --> Check these two print outputs and try to find out the reason for that output.
 */
class Example1 {
    var a : String = ""
}

var example1 = Example1()
example1.a = "Hello"

var example2 = Example1()
example2.a = "Hi"

print(example1.a)
print(example2.a)


