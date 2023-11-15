//
//  Restaurant.swift
//  FoodPin
//
//  Created by Xer on 2023/11/15.
//

import Foundation

struct Restaurant {
    var name: String
    var type: String
    var location: String
    var image: String
    var isFavorite: Bool

    init(name: String, type: String, location: String, image: String, isFavorite: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isFavorite = isFavorite
    }

    init() {
        self.init(name: "", type: "", location: "", image: "", isFavorite: false)
    }
}



/*
 
 简化初始器
 struct Restaurant {
 var name: String = ""
 var type: String = ""
 var location: String = ""
 var image: String = ""
 var isFavorite: Bool = false
 }
 */
