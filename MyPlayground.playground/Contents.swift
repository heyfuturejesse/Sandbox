import UIKit

func knitSweater(then: () -> Void) {
    print("Buy wool")
    for _ in 1...100 {
        print("Knit knit knit...")
    }
    then()
}
knitSweater {
    print("Who wants to buy a sweater?")
}
