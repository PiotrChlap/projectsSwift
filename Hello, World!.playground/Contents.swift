import UIKit

var greeting = "Hello, playground"
print(greeting)

let name = "John"
print(name)
//name = "James"

var age = 28
print(age)
age = 29
print(age)


let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore

print(playerOneScore)
print(playerTwoScore)

playerOneScore = 200

print(playerOneScore)


struct Person {
    let firstName: String
    let lastName: String
    
    func sayHello(){
        print("Hello there! my name is \(firstName) \(lastName)")
    }
}

var bobPerson = Person(firstName: "Bob", lastName: "Alien")

bobPerson.sayHello()
var largeUglyNumber = 1000000000
var largePrettyNumber = 1_000_000_000
