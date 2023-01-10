//
//  main.swift
//  D_M2_Ass_11_iOs
//
//  Created by MAC2 on 09/01/23.
//

import Foundation
//Write a program to find minimum number using ternary operator (take three numbers)

print("Enter First Number")
var num1 = String(readLine()!)

print("Enter Second Number")
var num2 = String(readLine()!)

print("Enter Third Number")
var num3 = String(readLine()!)


(num1 < num2 && num1 < num3) ?
    print("Number 1 is smaller") :

(num2 < num3 && num2 < num1) ?
    print("Number 2 is smaller") :

    (num3 < num2 && num3 < num1) ?
        print("Number 3 is smaller") :

print("all are same")
