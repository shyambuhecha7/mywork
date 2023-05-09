import UIKit

//13)Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.  Output: WeekDays.subscript(day: 1) // will return Sunday Note: Handle invalid input.
class WeekDays {
    var weekArray = ["sun", "mon", "tue", "wed", "thurs", "fri", "sat"]
    
    subscript(day: Int) -> String {
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
    
    subscript(index: Int) -> Character {
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
    var from: Int
    var to: Int
    subscript(from: Int, to: Int) -> String {
        var from = word.index(word.startIndex, offsetBy: from)
        var to = word.index(word.startIndex, offsetBy: to)
        return String(word[from...to])
    }
}

var word = Word(from: 2, to: 6)
word[2,5]
print(word[2,5])

//16)  I have one integer array and create one function which takes range as input and returns all elements between the range.
var array = [1,2,4,32,5,1,5,78,6,12,3,45,17]

func subarray(array: [Int], from: Int, to: Int) -> [Int] {
    var newArray : [Int] = Array(array[from...to])
    return newArray
}

var subArray = subarray(array: array, from: 3, to: 5)
print(subArray)

/*
 17)  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.
 •    Output: let array = [[1: “Hello”], [2: “Hi..”]] Now call function subscript(at: 1) it should print "Hello”
 */
class Pair {
    
    var array = [[1: "Hello"], [2: "Hi.."]]

    subscript(at : Int) -> String {
      
        for dictionary in array {
            if dictionary[at] != nil {
                return dictionary[at]!
            }
        }
        return ""
    }
}

var pairObject = Pair()
var value = pairObject[1]
print(value)

// 18)  Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.
class PersonProfile {
    var name: String
    var age: Int
    var birthdate: String
    
    init(name: String, age: Int, birthdate: String) {
        self.name = name
        self.age = age
        self.birthdate = birthdate
    }
}

var profile1 = PersonProfile(name: "Shyam", age: 21, birthdate: "15/01/2002")
var profile2 = PersonProfile(name: "Darshan", age: 21, birthdate: "28/10/2001")
var profile3 = PersonProfile(name: "Subham", age: 21, birthdate: "13/12/2001")
var profile4 = PersonProfile(name: "Sagar", age: 21, birthdate: "25/12/2001")

var arrayOfPerson = [profile1,profile2,profile3]

class GetProfile {
    subscript(name : String) -> PersonProfile {
        for profile in arrayOfPerson {
            if name == profile.name {
                return profile
            }
        }
        return arrayOfPerson[0]
    }
}
var getProfile = GetProfile()
var personInfo = getProfile["Shyam"]

print("name : \(personInfo.name), age : \(personInfo.age), birthdate : \(personInfo.birthdate)")

