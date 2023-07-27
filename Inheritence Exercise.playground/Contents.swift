import UIKit

//8)  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.
class BasePerson {
    var name: String
    var occupation: String
    
    init(name: String, occupation: String) {
        self.name = name
        self.occupation = occupation
    }
}

class Student: BasePerson {
    var college: String
    
    init(college: String) {
        self.college = college
        super.init(name: "Shyam", occupation: "Student")
    }
}

class Employee: BasePerson {
    var company: String
    
    init(company: String) {
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
    func add(number1: Int, number2: Int) {
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
    static func printFullname(fullname: String) {
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

// 19)  Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer
class Song {
    var singer: String
    var type: String
    var composer: String
    
    init(singer: String, type: String, composer: String) {
        self.singer = singer
        self.type = type
        self.composer = composer
    }
    
    func playSong() {
        print("music is playing")
    }
    
}

class HipHop: Song {
    
    var songName: String
    
    init(songName: String, singer: String, type: String, composer: String) {
        self.songName = songName
        super.init(singer: singer, type: type, composer: composer)
    }
    
    override func playSong() {
        print("Song Name: \(self.songName) \n Singer: \(self.singer) \n Type: \(self.type) \n Composer: \(self.composer)")
    }
    
}

class Classical: Song {
    var songName: String
    
    init(songName: String, singer: String, type: String, composer: String) {
        self.songName = songName
        super.init(singer: singer, type: type, composer: composer)
    }
    
    override func playSong() {
        print("Song Name: \(self.songName) \n Singer: \(self.singer) \n Type: \(self.type) \n Composer: \(self.composer)")
    }
    
}

var hiphop = HipHop(songName: "Mind Playing Tricks on Me”", singer: "Geto Boys", type: "hiphop", composer: "Jemi Stain")
hiphop.playSong()

var classical = Classical(songName: "Moonlight”", singer: "Ludwig Van Beethoven", type: "classical", composer: "Meno C. N.")
classical.playSong()
