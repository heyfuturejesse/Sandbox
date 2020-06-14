import UIKit





//MARK: Using closures as parameters when they accept parameters
/*
func beCool(action: (String) -> Void) {
    print ("I'm putting my shades on...")
    action("hat backwards")
    print("I'm feeling totally cool.")
}

beCool { (item: String) in
    print("I'm going to wear my \(item).")
}
*/





//MARK: Another example of using closures as parameters when they accept parameters
/*
func study(reviseNotes: (String) -> Void) {
    let notes = "Napoleon was a short, dead dude."
    for _ in 1...10 {
        reviseNotes(notes)
    }
}
study { (notes: String) in
    print("I'm reading my notes: \(notes)")
}
*/





//MARK: Arrays are fine too with the "closures as parameters when they accept parameters" concept
/*
func createInterface(positioning: ([String]) -> Void) {
    print("Creating some buttons")
    let buttons = ["Button 1", "Button 2", "Button 3"]
    positioning(buttons)
}
createInterface { (buttons: [String]) in
    for button in buttons {
        print("I'll place \(button) here...")
    }
}
*/





//MARK: Capturing values examples
/*
func travel() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel()
result("London")
result("London")
result("Sydney")
result("Sydney")
*/

//MARK: Another Example - cool way to explain how this works a little differently.

/*
func swingBat() -> () -> Void {
    var strikes = 0
    return {
        strikes += 1
        if strikes >= 3 {
            print("You're out!")
        } else {
            print("Strike \(strikes)")
        }
    }
}
let swing = swingBat()
swing()
swing()
swing()
*/

// And another example

/*
func translate(language: String) -> (String) -> String {
    return {
        if language == "French" {
            if $0 == "Hello" {
                return "Bonjour"
            } else {
                return "\($0) is unknown."
            }
        } else {
            return "Unknown language."
        }
    }
}
let translator = translate(language: "French")
let french = translator("Hello")

print(french)
*/





//MARK: Structs
// Computed properties
/*
struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic Sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let afl = Sport(name: "Aussie Rules Football", isOlympicSport: false)
print(afl.olympicStatus)
*/




//MARK: Property observers
/*
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
    
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
*/

/*
struct BankAccount {
    var name: String
    var isMillionnaire = false
    var balance: Int {
        didSet {
            if balance > 1_000_000 {
                isMillionnaire = true
                print("You got some cash man, look at how much you got: \(balance)")
            } else {
                isMillionnaire = false
                print("You got some cash to make man, look at how much you got: \(balance)")
            }
        }
    }
}

var money = BankAccount(name: "comm bank", balance: 1_000_000)
money.balance = 100
money.balance = 1_000_001
*/



//MARK: Methods
/*
struct Fruits {
    var cropNumber: Int
    
    func collectTithe() -> Int {
        return cropNumber * 1000
    }
}

let corn = Fruits(cropNumber: 9_000_000)
corn.collectTithe()
*/




/*
struct User {
    var name: String
    var street: String
    var city: String
    var postalCode: String
    func printAddress() -> String {
        return """
        \(name)
        \(street)
        \(city)
        \(postalCode)
        """
    }
}

let Banana = User(name: " John Freeman \n",
                  street: "89 Example Street\n",
                  city: "Point Vernon\n",
                  postalCode: "4101\n")
print(Banana.name,
      Banana.street,
      Banana.city,
      Banana.postalCode)
*/



/*
struct App {
    var name: String
    private var sales = 0
    init(name: String) {
        self.name = name
    }
}
let spotify = App(name: "Spotify")
*/



//MARK: Classes

/*
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

*/

//MARK: Creating classes

/*
class VideoGame {
    var hero: String
    var enemy: String
    init(heroName: String, enemyName: String) {
        self.hero = heroName
        self.enemy = enemyName
    }
}
let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")
*/



//MARK: Child Classes / Class Inheritance

/*
class Cat {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class exoticShortHair: Cat {
    init(name: String) {
        super.init(name: name, breed: "Exotic Short Hair")
    }
}

*/



//MARK: Deinitializers

/*
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}


for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
*/




//MARK: Protocols

/*
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID (thing: Identifiable) {
    print("My ID is \thing.id")
}

*/


//MARK: Protocol inheritance


/*
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

*/


//MARK: Extensions

/*
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

print(number.squared())
*/


//MARK: Protocol extensions

/*
let fruit = ["Orange", "Apple", "Banana", "Pear"]
let vegies = Set(["Potato", "Pumpkin", "Peas", "Corn"])

extension Collection {
    func summarize() {
        print("There are \(count) of these things:")
        
        for name in self {
            print(name)
        }
    }
}

fruit.summarize()
vegies.summarize()
*/


//MARK: Protocol-oriented programming

/*
protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

let jruss = User(id: "jruss")
jruss.identify()

*/
