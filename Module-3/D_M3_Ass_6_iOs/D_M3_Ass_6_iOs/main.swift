//
//  main.swift
//  D_M3_Ass_6_iOs
//
//  Created by MAC2 on 27/01/23.
//

import Foundation

//wap to perform all arithmetic operation  using functions which might be menu driven.
var d : Int?

func calculate(a : Int, b : Int, c : Arithmetic) {
    switch c {
    case .add :
        d = a + b
    case .sub :
       d = a - b
    case .mul :
        d = a * b
    case .div :
        d = a / b
    default:
        print("Enter number only")
    }
}

enum Arithmetic {
    case add
    case sub
    case mul
    case div
}

