//
//  ViewController.swift
//  lecture1-demo
//
//  Created by Jerry Ye on 9/11/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var bigView: UIView!
    var number = ""
    let password = "1234"

    override func viewDidLoad() {
        super.viewDidLoad()
        currentNum.text = number
    }
    @IBOutlet weak var currentNum: UILabel!
    
    @IBAction func updateNum(_ sender: UIButton) {
        number += sender.titleLabel?.text ?? ""
        currentNum.text = number
        
    }
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBAction func reset(_ sender: Any) {
        number = ""
        currentNum.text = number
        view.backgroundColor = .white
    }
    @IBAction func checkAttempt(_ sender: Any) {
        if number == password{
            view.backgroundColor = .green
        }
        else{
            view.backgroundColor = .red
        }
    }
}

