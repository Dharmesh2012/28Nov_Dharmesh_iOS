//
//  main.swift
//  D_M3_Ass_13_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import Foundation

//WAP to use generics to swap two integer values.

func swap<T>(left : inout T, right : inout T) {
    let temp = left
    left = right
    right = temp
}

var x = 0
var y = 1
swap(left: &x, right: &y)
print("x is now = ",x)
print("y is now =",y)
