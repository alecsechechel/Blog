//: Constants
import UIKit

struct Constants {
    
    struct ViewController1 {
        struct size {
            struct buttons {
                static let buttonStartWidth: CGFloat = 50.0
                static let buttonStartHeight: CGFloat = 30.0
            }
        }
    }
    
    struct ViewController2 {
        struct size {
            struct labels {
                static let labelStartWidth: CGFloat = 50.0
                static let labelStartHeight: CGFloat = 30.0
            }
        }
    }
    
    struct General {
        static let time = 20
        static let colorRed = UIColor.redColor()
    }
}

let button = UIButton()
button.frame.size.width = Constants.ViewController1.size.buttons.buttonStartWidth
let textColor = Constants.General.colorRed
