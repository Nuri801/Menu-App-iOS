//
//  MenuItem.swift
//  Menu
//
//  Created by 유티이씨 on 2023/05/03.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var price: String = "$2.99"
    var imageName: String

}



