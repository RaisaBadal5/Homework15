//
//  Horoscope.swift
//  figma3App
//
//  Created by Default on 11.04.24.
//

import Foundation

class Horoscope {
    var Name: String
    var Description: String
    var PhotoName: String
    var PolarSign: String
    init(Name: String,Description: String,PhotoName: String, PolarSign: String) {
        self.Name = Name
        self.Description = Description
        self.PhotoName = PhotoName
        self.PolarSign = PolarSign
    }
    
    func Print() {
        print("hi")
    }
    
}
