//
//  ViewController.swift
//  lecture4-demo
//
//  Created by Jerry Ye on 10/9/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Application"
    }

    @IBAction func changeScreen(_ sender: Any) {
        performSegue(withIdentifier: "basicSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "basicSegue"){
            let vc = segue.destination as! OtherViewController
            vc.color = "Red"
        }
    }
}

