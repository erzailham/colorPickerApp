//
//  ColorPicker.swift
//  Color Picker
//
//  Created by Reza Ilham on 25/10/22.
//

import Foundation
import UIKit

struct ColorPicker {
    var colorName: String
    var color: UIColor
    
    init(colorName: String, color: UIColor) {
        self.colorName = colorName
        self.color = color
    }
    
    init(withName name: String, withColor color: UIColor) {
        self.color = color
        self.colorName = name
    }
}
