//
//  OtherViewController.swift
//  lecture4-demo
//
//  Created by Jerry Ye on 10/9/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {
    var color: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        if color == "Red"{
            view.backgroundColor = .red
        }
        


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
