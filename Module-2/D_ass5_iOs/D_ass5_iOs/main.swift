//
//  main.swift
//  D_ass5_iOs
//
//  Created by MAC2 on 27/12/22.
//

import Foundation

//Write a program to perform all arithmetic operations.

var a : Int = 50
var b : Int = 20

print("Addition of a + b = \(a + b)")
print("Substraction of a - b = \(a - b)")
print("Multiplication of a + b = \(a * b)")
print("Division of a + b = \(a / b)")


//Perform all arithmetic operations.(With user input)

print("Enter First Number")
var fnum = Int(readLine()!)!
print("Enter Second Number")
var snum = Int(readLine()!)!

print("Addition of \(fnum) and \(snum) is", fnum+snum)
print("Substraction of \(fnum) and \(snum) is", fnum-snum)
print("Multiplication of \(fnum) and \(snum) is", fnum*snum)
print("Division of \(fnum) and \(snum) is", fnum/snum)
