//
//  main.swift
//  D_M2_Ass_13_iOs
//
//  Created by MAC2 on 09/01/23.
//

import Foundation

//write a program to take distinct value with tuples.

print("Enter your name")
var name : String = readLine() ?? ""

print("Enter your age")
var age : Int = Int(readLine()!)!

print("Enter your weight")
var weight : Float = Float(readLine()!)!


var tpl = (name, age, weight)
print(tpl)
print("Your name is \(String(describing: tpl.0))")
print("Your age is \(String(describing: tpl.1))")
print("Your weight is \(String(describing: tpl.2))")
