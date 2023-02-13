//
//  main.swift
//  D_M3_Ass_1_iOs
//
//  Created by MAC2 on 11/01/23.
//

import Foundation

//wap to modify values from specific position from an array.

var fruits : [String] = ["first line ----Apple", "Mango", "Guava", "Orange", "Grapes"]
fruits.insert("WaterMelon", at: 1)


fruits[2] = "Banana"
print(fruits)

fruits.remove(at: 0)
print("SecondLine",fruits)



//var fruits : [String] = []
//print("Enter how many fruits name you want to write")
//var num = Int(readLine()!)!
////var getword = readLine()
//for _ in 0..<num {
//    print("Enter fruit Name here")
//    let getword = readLine()
//    fruits.append(getword ?? "")
//
//}
//
//print(fruits)
//
//print("If you want to add another name? please give index of it")
//var newnum = Int(readLine()!)!
//print("Write another fruit name")
//var anothername = readLine()
//fruits.insert(anothername!, at: newnum)
//print(fruits)
