//
//  ViewController.swift
//  firebase-demo
//
//  Created by Jerry Ye on 11/11/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    
    let db = Firestore.firestore()


    override func viewDidLoad() {
        super.viewDidLoad()
        let rand = randomString(length: 8)
        db.collection("users").document(rand).setData([
            "name": rand
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
                let docRef = self.db.collection("users").document(rand)
                docRef.getDocument { (document, error) in
                    if let document = document, document.exists {
                        let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                        print("Document data: \(dataDescription)")
                    } else {
                        print("Document does not exist")
                    }
                }
            }
        }
        
        // Do any additional setup after loading the view.
    }
    
    func randomString(length: Int) -> String {

        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)

        var randomString = ""

        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }

        return randomString
    }

}

