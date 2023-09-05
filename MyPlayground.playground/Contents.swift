import UIKit


var num1: Int? = nil
num1 = 20
print(num1!) //force unwrapping

var num2 : Int = 10
print(num1!+num2)

var num3:Int?
// print(num3) // you will get nil value




// nil coalesing
var number :Int?
var value = number ?? 0
print(value) //0

var name :String? = "bitcode"
var companyName = name ?? "default"
print(companyName) //bitcode



// traditional if else
var color: String?
color = "Blue"

if color != nil { // we are checking whether color is nil or not
 print(color!) // print unwrap
} else {
  print("The color value is found out to be nil")
}


//optional binding

// 1.if-let


var numberFive :Int? = 100
if let num5 = numberFive { // here the disadvantage is the num5 can be only be accesed inside this block
  print("The value of numberFive is \(num5)") //. Here we no need to handle unwrapping
} else {
  print("The value of numberFive is nil")
}


//2. guard-let

var colour = [1:"Blue", 2: "Green", 3: "Red"]

func checkKey(key:Int) -> Int {
  guard let keyForValue = colour[key] else {
      print("keyForValue not present \(key)")
    return key
  }
  print("keyForValue \(keyForValue)")
  return key
}

print(checkKey(key:5))



// for... in stride loop
for i in stride(from: 10, to:20, by:2){  // 10 is included but  20 is excluded
  if i%2 == 0{
    print(i+5)
  } else {
    print(i-5)
  }
}


for i in stride(from: 1, through: 10, by: 1){ // here through element is included
  print(i*5)
}








for i in stride(from: 1, through: 10, by: 1){ // here through element is included
  print(i*5)
}

// func add(a:Float,b:Int) -> Int {
// return Int(a)+b
// }

// print(add(a:10,b:20))

// navigation is an application of closure
var addition : (Int,Int) -> Int = {
  (num1,num2) in
  return num1+num2
}

print(addition(10,40))

var add = {(a:Int, b:Int)-> Int
in return a+b
}

print(add(10,60))

var cube = {(a:Int)-> Int in return a*a*a}
print(cube(5))

var nums :[Any] = [4, 5.3, "Biswajeet"]
print(nums)


for i in nums {
 print(i)
}
 

 var arr1: [String] = []        //empty array
 var arr2: [String] =  [String]()   // empty array


 enum colors{
  case Red
  case Blue
  case Green
 }

 var selectedColor = colors.Red

// it is ok if we dont add break statemnet
 switch selectedColor {
  case .Blue:
    print("Blue")
  case .Red:
   print("Red")
  case .Green:
   print("Green")
  // default:
  //  print("Default")
 }

// enum with raw Values
enum Days: Int {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
}

class Rectangle {
    // stored properties
    var length: Int
    var breadth: Int
    
    init(length:Int, breadth:Int) {
        print("init block called")
        self.length = length  // self keyword denotes the current Instance of class
        self.breadth = breadth
    }
    
    func calculateArea()->Int {
        return self.length * self.breadth
    }
    
    deinit {
        print("deinit block")
    }
}

var rectRef = Rectangle(length: 10, breadth: 20)
var area = rectRef.calculateArea()
print("area \(area)")



struct Student {
    var firstName: String
    var lastName: String
    var rollNumber :Int
    
    init(firstName:String,lastName:String,rollNumber:Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.rollNumber = rollNumber
    }
    
    func displayDetails() -> String {
        return self.firstName + " " + self.lastName + " " + String(self.rollNumber)
    }
}

var st1 = Student(firstName: "Biswajeet", lastName: "Gope", rollNumber: 10)
print(st1.displayDetails()) //Biswajeet Gope 10


print("--------------------")

st1.firstName = "Default"

print(st1.displayDetails()) //Default Gope 10


var studentRef = st1

studentRef.firstName = "XYZ"
print(studentRef.displayDetails())












