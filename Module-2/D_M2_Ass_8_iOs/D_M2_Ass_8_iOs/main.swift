//
//  main.swift
//  D_M2_Ass_8_iOs
//
//  Created by MAC2 on 03/01/23.
//

import Foundation

//wap to perform all arithmetic operation with menu driven.
print("Enter first number")
var num1 : Int = Int(readLine()!)!
print("Enter Second Number")
var num2 : Int = Int(readLine()!)!
var total : Int?

print("Which operation you wish to do")
var store = readLine()
switch store {
case "add" :
   total = num1 + num2
    print("Addition of \(num1) and \(num2) = \(total)")
    
case "sub":
   total = num1 - num2
    print("Substraction of \(num1) and \(num2) = \(total)")
    
case "mul":
    total = num1 * num2
    print("Multiplication of \(num1) and \(num2) = \(total)")
    
case "div":
    total = num1 / num2
    print("Division of \(num1) and \(num2) = \(total)")
    
default :
    print("No thay bhai")
}
