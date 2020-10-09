//
//  ViewController.swift
//  lecture4-demo
//
//  Created by Jerry Ye on 10/9/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let num = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Hello World"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeScreen(_ sender: Any) {
        performSegue(withIdentifier: "change"   , sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "change"{
            let vc = segue.destination as! OtherViewController
            vc.state = "Red"
            
        }
    }
    
    
}



