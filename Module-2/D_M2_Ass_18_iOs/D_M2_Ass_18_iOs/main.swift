//
//  main.swift
//  D_M2_Ass_18_iOs
//
//  Created by MAC2 on 10/01/23.
//

import Foundation

//wap to make an ingredients set then check any value may exist or not.

var months : Set = ["January", "February", "March", "April", "May", "June"]
print("Enter name of the month..")
var getMonth = readLine()
var store = months.contains(getMonth ?? "")
print("The month given by you \(String(describing: getMonth)) is present? :  \(store)")

