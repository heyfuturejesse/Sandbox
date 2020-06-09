import UIKit

func beCool(then: () -> Void) {
    print("Just putting on my shades...")
    for _ in 1...3 {
        print("I'm dope as hell, dude")
    }
    then()
}
beCool {
    print("Who wants to wear their hat backwards?")
}
