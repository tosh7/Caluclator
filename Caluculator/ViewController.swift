//
//  ViewController.swift
//  Caluculator
//
//  Created by Satoshi Komatsu on 2019/03/21.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var ope = 0
    var extraOpe = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "0"
    }

    @IBAction func press0(_ sender: Any) {
        number1 = number1 * 10
        label.text = String(number1)
    }
    
    @IBAction func press1(_ sender: Any) {
        number1 = number1 * 10 + 1
        label.text = String(number1)
    }
    
    @IBAction func press2(_ sender: Any) {
        number1 = number1 * 10 + 2
        label.text = String(number1)
    }
    
    @IBAction func press3(_ sender: Any) {
        number1 = number1 * 10 + 3
        label.text = String(number1)
    }
    
    @IBAction func press4(_ sender: Any) {
        number1 = number1 * 10 + 4
        label.text = String(number1)
    }
    
    @IBAction func press5(_ sender: Any) {
        number1 = number1 * 10 + 5
        label.text = String(number1)
    }
    
    @IBAction func press6(_ sender: Any) {
        number1 = number1 * 10 + 6
        label.text = String(number1)
    }
    
    @IBAction func press7(_ sender: Any) {
        number1 = number1 * 10 + 7
        label.text = String(number1)
    }
    
    @IBAction func press8(_ sender: Any) {
        number1 = number1 * 10 + 8
        label.text = String(number1)
    }
    
    @IBAction func press9(_ sender: Any) {
        number1 = number1 * 10 + 9
        label.text = String(number1)
    }
    
    @IBAction func pressClear(_ sender: Any) {
        number1 = 0
        number2 = 0
        ope = 0
        label.text = String(number1)
    }
    
    @IBAction func add(_ sender: Any) {
        if ope != 0 {
            moreCalc()
        }
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func minus(_ sender: Any) {
        if ope != 0 {
            moreCalc()
        }
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func times(_ sender: Any) {
        if ope == 3 || ope == 4 {
            moreCalc()
            number2 = number1
            ope = 3
        } else if ope == 1 || ope == 2 {
            if extraOpe != 0 {
                extraCalc()
            } else {
                number3 = number1
            }
            extraOpe = 3
        }
        number1 = 0
    }
    
    @IBAction func divide(_ sender: Any) {
        if ope == 3 || ope == 4 {
            moreCalc()
            number2 = number1
            ope = 4
        } else if ope == 1 || ope == 2 {
            if extraOpe != 0 {
                extraCalc()
            } else {
                number3 = number1
            }
            extraOpe = 4
        }
        number1 = 0
    }
    
    @IBAction func equal(_ sender: Any) {
        if extraOpe != 0 {
            if extraOpe == 3 {
                number1 = number3 * number1
            } else if extraOpe == 4 {
                number1 = number3 / number1
            }
            extraOpe = 0
        }
        
        if ope == 1 {
            number1 = number1 + number2
        } else if ope == 2 {
            number1 = number2 - number1
        } else if ope == 3 {
            number1 = number1 * number2
        } else if ope == 4 {
            number1 = number2 / number1
        }
        
        label.text = String(number1)
        number2 = 0
        ope = 0
    }
    
    func moreCalc() {
        if extraOpe != 0 {
            if extraOpe == 3 {
                number3 = number3 * number1
            } else if extraOpe == 4 {
                number3 = number3 / number1
            }
            extraOpe = 0
        }
        
        if ope == 1 {
            number1 = number1 + number2
        } else if ope == 2 {
            number1 = number2 - number1
        } else if ope == 3 {
            number1 = number1 * number2
        } else if ope == 4 {
            number1 = number2 / number1
        }
        
        label.text = String(number1)
        number2 = 0
        ope = 0
    }
    
    func extraCalc() {
        if extraOpe == 3 {
            number3 = number3 * number1
        } else if extraOpe == 4 {
            number3 = number3 / number1
        }
        extraOpe = 0
    }
}
