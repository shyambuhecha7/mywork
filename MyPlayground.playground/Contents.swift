import UIKit

var greeting = "Hello, playground"

func auth(name : String) throws {
    if name != "Shyam" {
        
    }
    else {
        print("auth success")
    }
}

try auth(name : " ")

var arr = [1,2,3]
var op : Int? = 10
arr.append(op as Any as! Int)

private protocol AS {
 func asd()
}
class ABC : AS{
    func asd() {
        print("Sfsdas")
    }
}

private extension ABC {
    func aS(){
        print("asfds")
    }
}

var aab = ABC()
aab.aS()


class G {
    var a : Int
    
    init(a : Int) {
        self.a = a
        print("init")
    }
    deinit {
        print("deinit")
    }
}
var g = G(a: 5)
print(g.a)

//ascaping and autoclosure
func add(a : @autoclosure @escaping () -> ()) -> String {
    a()
    return "escaping"
}

print(add(a: print("hello")))


//
class GetValue {
    var array = [[1: "Hello"], [2: "Hi.."]]
    subscript(at : Int) -> String {
        for dictionary in array {
            if dictionary[at] != nil {
                return dictionary[at] ?? " "
            }
        }
        return "not found"
    }
}

var getString = GetValue()
print(getString[4])

//recursive enum

indirect enum FirstEnum {
    case number(Int)
    case sum(FistEnum,FirstEnum)
}

var sum = FirstEnum.sum(FirstEnum.number(5), FirstEnum.number(10))









