//
//  main.swift
//  D_M3_Ass_3_iOs
//
//  Created by MAC2 on 11/01/23.
//

import Foundation

//wap to check whether a string contains specific characters or not.

var name : String = "Dharmesh"
print("Enter a character")
var enteredCharacter : String? = readLine()
if name.contains(enteredCharacter ?? "") {
    print("\(enteredCharacter ?? "") character is in Dharmesh")
}
else {
    print("Na bhai nthi ")
}

