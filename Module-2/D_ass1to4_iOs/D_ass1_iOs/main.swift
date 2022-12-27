//
//  main.swift
//  D_ass1_iOs
//
//  Created by Tops on 12/12/22.
//

import Foundation
temp()

func temp() {
//Assignment 1, WAP to take a string value from user.
//    print("Enter any message in String")
//var getString = readLine()!
//print("SuccessFully Stored and Your message is :",getString)

    
//Assignment 2, WAP to take an integer value from user.
//    print("Enter Any Number")
//    var getIntNum = readLine()!
//    print("SuccessFully Stored Number and Your number is :",getIntNum)

//Assignment 3,WAP to set default value to the variable.
//    var name : String = "My Name Is Dharmesh"
//    print(name)
//
//    var number : Int = 112223334444
//    print(number)
//
//    var pointNumber : Float = 121.1259
//    print(pointNumber)

//Assignment 4, WAP to find maximum value from three numbers.
    print("Write first Number")
    var firstNum = readLine()!
    
    print("Write second Number")
    var secondNum = readLine()!
    
    print("Write third Number")
    var thirdNum = readLine()!
    
    if firstNum > secondNum && firstNum > thirdNum{
        print("Maximum value of among is",firstNum)
    } else if secondNum > firstNum && secondNum > thirdNum {
        print("Maximum value of among is",secondNum)
    } else {
        print("Maximum value of among is",thirdNum)
    }
}
