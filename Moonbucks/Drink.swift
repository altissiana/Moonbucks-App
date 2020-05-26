//
//  Drink.swift
//  Moonbucks
//
//  Created by Tissiana Alves on 5/26/20.
//  Copyright © 2020 Tissiana Alves. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category:String
    var description:String
}
