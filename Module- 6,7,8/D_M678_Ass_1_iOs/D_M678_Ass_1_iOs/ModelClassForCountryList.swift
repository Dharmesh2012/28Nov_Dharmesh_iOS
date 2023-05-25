//
//  ModelClassForCountryList.swift
//  D_M678_Ass_1_iOs
//
//  Created by Dharmesh N. Agravat on 25/04/23.
//

import UIKit

class CountryCapitalList : Codable {
    var name : InName?
    var capital : [String]?
    
    init(capital: [String]?) {
       
        self.capital = capital
    }
}

class InName : Codable {
    var official : String?
    init(official: String? = nil) {
        self.official = official
    }
}

