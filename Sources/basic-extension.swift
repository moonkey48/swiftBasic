import Foundation
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let firstName: String = "moon"
        let intNumber: Int = 5
        
        firstName.greatTheWorld()
    }
}

extension String {
    func greatTheWorld(){
        print("Hello world")
    }
}

extension Int {
    func takeAway(a:Int)->Int{
        return self - a
    }
}
