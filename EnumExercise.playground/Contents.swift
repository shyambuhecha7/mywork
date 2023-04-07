import UIKit

var greeting = "Hello, playground"
/*
 1.Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
 Example. It should return Monday or mon if I pass parameter 1 for get day name.
 */
enum Week : Int {
    case mon = 1, tue, wed, thurs, fri, sat, sun
    
    func checkday(rawValue : Int) -> String {
        switch Week(rawValue: 1){
        case .mon :
            return "Monday"
        case .tue :
            return "Tuesday"
        case .wed :
            return "Wednesday"
        case .thurs :
            return "Thursday"
        case .fri :
            return "Friday"
        case .sat :
            return "Saturday"
        default :
            return "Sunday"
     
        }
    }
}

var week = Week(rawValue: 2)
week?.checkday(rawValue: 5)

/*
 2) Create one enumeration program to return number of days in a month.
 */
enum Months {
    case jan, feb, march, april, may, jun, july, aug, sept, oct, nov, dec
}

//switch Months.jan {
//    case .jan, .march, .may,
//}
//



/*
 3) Write a swift program using enumerations to demonstrate Int enums.
 */
enum IntEnum : Int {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
}
print(IntEnum.one.rawValue)

//4) Write a swift program to demonstrate string type enum
enum StringEnum : String {
    case vehicle = "Bike"
    case flower = "Lotus"
    case fruit = "Mango"
}
print(StringEnum.vehicle.rawValue)

//5) Write a swift program for enum with raw values.
enum RawValueEnum : String {
    case captain = "MS DHONI"
    case bowler = "R.JADEJA"
    case batsman = "GAYAKWAD"
}

//6) Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory).
enum ValueEnum : String, CaseIterable {
    case captain = "MS DHONI"
    case bowler = "R.JADEJA"
    case batsman = "GAYAKWAD"
}

for index in ValueEnum.allCases {
    print(index)
}

//7) Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).
enum Sample {
    case number(Int)
    case double(Double,Double,Double)
    case qrCode(String)
}
Sample.double(12.5, 43.4, 173.12)
Sample.number(10)
Sample.qrCode("QR")

//8) Create an enum with its rawValues of type String and show usage of case to print value of case.
enum Bucket : String {
    case fruit = "Mango"
    case veg = "Chilli"
}

print(Bucket.fruit.rawValue)
print(Bucket.veg.rawValue)

