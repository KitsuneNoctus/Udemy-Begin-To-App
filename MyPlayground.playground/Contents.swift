
//var age = 34
//
//age = 35
//
//let kilosToPounds = 2.2
//
////kilosToPounds = 2.5
//
//var wallet = 0

// ------

var age: Int = 34

var kilosToLb: Double = 2.2

var name = "Henry"

//name = 6

var itsInt: Int = 88

var mood: String = "calm"

// -----

var wallet = 205

// I got food
wallet = wallet - 12

//Payday!
wallet = wallet + 80

wallet = wallet - 70 // Bought game

var coolNumber = 75

coolNumber = coolNumber * 4

print(56)

print(wallet)

/*
 MAde a comment
 */

// ---- Structs and Classes

class Dog {
    var name = ""
    var age = 0
    var furColor = ""
}

var myDog = Dog()
myDog.age = 7
myDog.furColor = "Brown"
myDog.name = "Spot"

var neighborDog = Dog()
neighborDog.age = 3
neighborDog.furColor = "White"
neighborDog.name = "Smooth"

struct Car {
    var year: Int
    var color: String
}

Car(year: 1992, color: "Red")

struct Food {
    var name: String
    var type: String
}

// ------ If Statements

var height = 49

if height >= 50 {
    print("You can ride the ride")
}
else {
    print("Sorry, not tall enough :(")
}

//name = "Mark"
if name == "Henry" {
    print("Welcome")
}
else {
    print("Get Out")
}
