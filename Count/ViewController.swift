//
//  ViewController.swift
//  Count
//
//  Created by 柳澤琉貴 on 2021/05/08.
//  Copyright © 2021 Ryuki Yanagisawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        numberCheck()
    }
    
    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
        numberCheck()
    }
    
    @IBAction func times() {
        number = number * 2
        label.text = String(number)
        numberCheck()
    }
    
    @IBAction func devides() {
        number = number / 2
        label.text = String(number)
        numberCheck()
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        numberCheck()
    }

    func numberCheck() {
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }

}

