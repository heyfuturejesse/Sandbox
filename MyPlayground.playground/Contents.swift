import UIKit





// Using closures as parameters when they accept parameters
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





// Another example of using closures as parameters when they accept parameters
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





// Arrays are fine too with the "closures as parameters when they accept parameters" concept
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





//Capturing values examples
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

//Another Example - cool way to explain how this works a little differently.

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
