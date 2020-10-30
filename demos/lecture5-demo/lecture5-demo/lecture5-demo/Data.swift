//
//  Data.swift
//  lecture5-demo
//
//  Created by Jerry Ye on 10/29/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import Foundation

struct APIResponse: Codable{
    let data: [Park]
}
struct Park: Codable{
    let name: String
    let description: String
    let designation: String
}
    
