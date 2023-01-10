//
//  main.swift
//  D_M2_Ass_12_iOs
//
//  Created by MAC2 on 09/01/23.
//

import Foundation

//write a program to take multiple value of type string into an array.

var askUser = 0
var arr = Array<String>()

print("Enter number of names you wanna store")
askUser = Int(readLine()!)!

for i in 1...askUser {
    print("Enter Name")
    let tmpstore = readLine()
    arr.append(tmpstore ?? "")
}
print(arr)

