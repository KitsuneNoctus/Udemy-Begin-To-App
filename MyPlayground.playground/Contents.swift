//
////var age = 34
////
////age = 35
////
////let kilosToPounds = 2.2
////
//////kilosToPounds = 2.5
////
////var wallet = 0
//
//// ------
//
//var age: Int = 34
//
//var kilosToLb: Double = 2.2
//
//var name = "Henry"
//
////name = 6
//
//var itsInt: Int = 88
//
//var mood: String = "calm"
//
//// -----
//
//var wallet = 205
//
//// I got food
//wallet = wallet - 12
//
////Payday!
//wallet = wallet + 80
//
//wallet = wallet - 70 // Bought game
//
//var coolNumber = 75
//
//coolNumber = coolNumber * 4
//
//print(56)
//
//print(wallet)
//
///*
// MAde a comment
// */
//
//// ---- Structs and Classes
//
//class Dog {
//    var name = ""
//    var age = 0
//    var furColor = ""
//}
//
//var myDog = Dog()
//myDog.age = 7
//myDog.furColor = "Brown"
//myDog.name = "Spot"
//
//var neighborDog = Dog()
//neighborDog.age = 3
//neighborDog.furColor = "White"
//neighborDog.name = "Smooth"
//
//struct Car {
//    var year: Int
//    var color: String
//}
//
//Car(year: 1992, color: "Red")
//
//struct Food {
//    var name: String
//    var type: String
//}
//
//// ------ If Statements
//
//var height = 49
//
//if height >= 50 {
//    print("You can ride the ride")
//}
//else {
//    print("Sorry, not tall enough :(")
//}
//
////name = "Mark"
//if name == "Henry" {
//    print("Welcome")
//}
//else {
//    print("Get Out")
//}

/*
  *** Section 4 ***
 */

//Arrays
//var favCandy = ["Oh,Henry",  "Starburst", "Pocky", "Hi-Chew", "Rolo"]

//// .first
//favCandy.first
//
//// .last
//favCandy.last
//
//// [0] Index
//favCandy[0]
//
//// .count
//favCandy.count
//
//// append()
////favCandy.append("Wiley Wallaby")
//print(favCandy)
//
//// .insert()
//favCandy.insert("Wiley Wallaby", at: 4)
//print(favCandy)
//
//// .remove()
//favCandy.remove(at: 5)
//print(favCandy)
//
//// Challenege - Make an array of yoru favorite Numbers and then remobve one
//
//var nums: [Int] = [3,13,45,100]
//nums.remove(at: 2)
//print(nums)

// --- For Loop ---
//var favCandy = ["Oh,Henry",  "Starburst", "Pocky", "Hi-Chew", "Rolo"]
//
//for number in 1...10 {
//    print(number)
//}
//
//for candy in favCandy {
//    print(candy)
//}
//
//for number in 1...50 {
//    print(number * 3)
//}


/*
  ------- Section 5 ----------
 */

// *** Booleans ***
//var age: Int = 56
//
//var name: String = "Numa"
//
//var isItHot: Bool = true
//
//if isItHot {
//    print("It is hot")
//}
//
//isItHot
//
//var isItBrown: Bool = true
//
//isItHot = false
//
//if isItHot {
//    print("It is hot")
//}
//else {
//    print("It's not hot")
//}

/*
 -------------- Section 6 ---------------
 */

// *** Functions ***


//func sayHello() {
//    print("Hello")
//}
//
//sayHello()
//
//struct Dog {
//    var name: String
//    var age: Int
//    
//    func bark() {
//        print("woof woof! My name is \(name) and I am \(age) years old.")
//    }
//}
//
//var myDog = Dog(name: "Fido", age: 5)
//var neighborDog = Dog(name: "Max", age: 14)
//
//myDog.bark()
//neighborDog.bark()
//
//func joke() {
//    print("Why did the chicken cross the road?")
//    print("To get to the KFC")
//}
//
//joke()

// *** Parameters and return ****

//func addNumber(num: Int, num2: Int) -> Int {
//    return num + num2
//}
//
//print(addNumber(num: 4, num2: 7))
//addNumber(num: 5, num2: addNumber(num: 6, num2: 2))
//addNumber(num: -6, num2: 7)
//
//var age = addNumber(num: 5, num2: 17)
//
//func sayHello(name: String) -> String {
//    return "Hello \(name)"
//}
//
//print(sayHello(name: "Hank"))

// **** Optionals ****

var temp = Int("45")

if temp != nil {
    var newTemp = temp!
}

(temp ?? 1) * 2

if let newTemp = temp {
    newTemp * 2
}


var isNamed: String? = "Hank" // nil
