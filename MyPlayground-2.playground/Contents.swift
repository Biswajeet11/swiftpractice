import UIKit

// protocols


protocol MathematicalOperations {
    func addition(n1:Int, n2:Int) -> Int
    func subtraction(n1:Int, n2:Int) -> Int
    func multiply(n1:Int, n2:Int) -> Int
    func division(n1:Int, n2:Int) -> Int
}

class Maths : MathematicalOperations {
    
    func addition(n1:Int, n2:Int) -> Int {
        return n1+n2
    }
    
    func subtraction(n1:Int, n2:Int) -> Int {
        return n1-n2
    }
    
    func multiply(n1:Int, n2:Int) -> Int {
        return n1*n2
    }
    func division(n1:Int, n2:Int) -> Int {
        return n1/n2
    }
    
}
 
var m1 = Maths()
print(m1.addition(n1: 10, n2: 20))


class Vehicle {
    var companyName : String
    var color: String
    var chasiNumber: String
    init(companyName:String, color:String, chasiNumber:String) {
        self.companyName = companyName
        self.color = color
        self.chasiNumber = chasiNumber
    }
    func displayDetails() {
       print("The vehicle details....\(companyName)")
    }
}

class Car : Vehicle {
    var seatingCapacity : Int?
    
    override func displayDetails() {
        print("Car details....\(seatingCapacity!)")
    }
}

var vehicle = Vehicle(companyName: "mercedez", color: "white", chasiNumber: "008080")

vehicle.displayDetails()
var car = Car(companyName: "Ford", color: "red", chasiNumber: "98997979")

car.seatingCapacity = 5
car.displayDetails()



var programmingLang = ["cpp", "js", "java"]

//foreach is a method which has closure as as yntax internally

programmingLang.forEach{
    eachLang in print(eachLang)
}


var numbers3 = [1,2,3,4]

numbers3.forEach{
    eachnum in print(eachnum*10)
}


func calulatePower(n1:Int, power:Int) -> Int {
    var n:Int = 1
    for _ in  (1...power) {
        n *= n1
    }
     return n
                
}


print(calulatePower(n1:2,power:4))


var course = "ios"
switch course{
case "Ios", "ios":
    print("ios selcted")
case "Android":
    print("android")
default:
    print("default")
}



var percent = 78.34

switch percent{
case 40.00..<55.00:
    print("The pass class")
case 55..<65:
    print("seconf class")
case 65..<75:
    print("first class")
case 75..<101:
    print("Distinction")
default:
    print("default case")
}
