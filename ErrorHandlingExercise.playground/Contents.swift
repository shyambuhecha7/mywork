import UIKit

var greeting = "Hello, playground"

/*
  1. Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.
*/
enum Validation : Error {
    case passwordIsShort
    case passwordisEmpty
}
var password = "user@1234"

func validate(password : String) throws {
    
    if(password.isEmpty){
        throw Validation.passwordisEmpty
    }else if (password.count < 8) {
        throw Validation.passwordIsShort
    }else{
        print("password length accepted")
    }
}

do{
    try validate(password: "shyam@1234")
  
}catch Validation.passwordisEmpty{
    print("password is empty")
}catch Validation.passwordIsShort{
    print("password is short")
}

/*
2.  Create a program for shopping cart. If desired quantity for an item is not available, throw exception.

 */
enum CartError : Error {
    case ItemNotAvailable
}

class Cart {
    var cart = ["snack","clothes","pen","bag"]
    
    func checkCart(array : [String]) throws {
        if array.isEmpty {
            throw CartError.ItemNotAvailable
        }else{
            print("cart is not empty")
        }
    }
}

var myCart  = Cart()

do{
    try myCart.checkCart(array: myCart.cart)
}catch CartError.ItemNotAvailable {
    print("item is not available")
}
