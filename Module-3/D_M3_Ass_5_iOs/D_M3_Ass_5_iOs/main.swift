//
//  main.swift
//  D_M3_Ass_5_iOs
//
//  Created by MAC2 on 11/01/23.
//

import Foundation

//wap to sort an array element using closure.

var numbers = [10, 5, 7, 8, 2, 4, 1, 3]

//numbers.sort { $0 < $1 }

let aNum = numbers.sorted(by: <)
print(aNum)

let dNum = numbers.sorted(by : >)
print(dNum)
