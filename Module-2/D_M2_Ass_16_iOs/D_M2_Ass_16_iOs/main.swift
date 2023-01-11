//
//  main.swift
//  D_M2_Ass_16_iOs
//
//  Created by MAC2 on 10/01/23.
//

import Foundation

//wap to add new value at a specific position of array.

var arrOfColors : [String] = ["Red", "Green", "Blue", "Cyan"]
print(arrOfColors)
arrOfColors.append("Magenta")
print(arrOfColors)

arrOfColors.insert("Black", at: 0)
arrOfColors.insert("White", at: 2)
print(arrOfColors)
