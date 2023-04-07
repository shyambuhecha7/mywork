import UIKit

var greeting = "Struct Exercise, playground"

//1.Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.
struct Work {
    var workLocation : String
    var workHour : Int
    var projectName : [String]
    
    func allProjectName(projectName : [String])  {
        for i in projectName {
          print(i)
        }
    }
}

var personWork = Work(workLocation : "Ahamdabad", workHour : 8, projectName : ["app1","app2","app3"])
personWork.allProjectName(projectName: personWork.projectName)

//2.Create a structure example which demonstrates use of initializer in structures.
struct News {
    var title : String
    var discription : String
    var image : Int
    
    init(title : String, discription : String, image : Int){
        self.title = title
        self.discription = discription
        self.image = image
    }
}

var article = News(title: "Gujrat Election", discription: "news about gujrat election and exit poll", image: 1)
print(article)

//3.Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.
struct Program {
    var code : String = "Hello Namaste"
    
    init(){
        
    }
    init(code : String) {
        self.code = code
    }
}

var swiftCode = Program(code: "Hello world")
print(swiftCode.code)

var javaCode = Program()
print(javaCode.code)

/*
 4.Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
Output: even numbers are: [6, 8, 10, 8, 12]
             Odd numbers are: [1, 3, 5, 9, 7]
*/
struct EvenOddArray {
    func evenoddArray(array : [Int]) -> ([Int],[Int]){
        var evenArray : [Int] = []
        var oddArray : [Int] = []
        
        for i in array{
            if(i%2 == 0){
                evenArray.append(i)
            }else{
                oddArray.append(i)
            }
        }
        return (evenArray,oddArray)
    }
}

let evenoddArrayObject = EvenOddArray()
//return tuple of evenArray and oddArray
var output : ([Int],[Int]) = evenoddArrayObject.evenoddArray(array: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])
print("Even Array : \(output.0)")
print("Odd Array : \(output.1)")

/*
 5.Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.
// Consider two persons array for Joe and Harry. But in your code Its size can be vary.
Output be like: Name: Joe, Gender: Male, Age: 27
   Name: Harry, Gender: Male, Age: 21
*/
struct person {
    var name : String
    var age : Int
    var gender : String
}
var joe = person(name: "Joe", age: 21, gender: "Male")

/*
 6. Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.
 */
struct Example1 {
    var a : String = ""
}

var example1 = Example1()
example1.a = "Hello"

var example2 = Example1()
example2.a = "Hi"

print(example1.a)
print(example2.a)

/*
 7.Try to figure out basic difference between class and structures and give a demo for same.
 */
//7.1 class and struct syntaxt
class Name {
    
}

struct Surname {
    
}

//7.2 class can inherited and struct not inherit
class Library {
    var libraryName = "Stanford"
}

class Book : Library {
    var bookName = "swift Advanced"
}

//7.3 class need initializer and struct auto initialize
class Mobile {
    var model : String
    
    init(model : String){
        self.model = model
    }
}

struct Tablet {
    var name : String = "ipad"
}

let mi = Mobile(model: "Note 6 pro")

let ipad = Tablet()

