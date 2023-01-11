//
//  main.swift
//  D_M2_Ass_20_iOs
//
//  Created by MAC2 on 10/01/23.
//

import Foundation

//wap to check two strings are equal or not, if equal - then join both string, if not equal - then print not equal.

print("Enter a word")
var word1 = readLine()

print("Enter a word same as first")
var word2 = readLine()

var finWord = word1! + word2!
if word1 == word2 {
    print("Right, both are same \(word1) + \(word2) = \(finWord)")
}
else {
    print("Sorry, Both words are not Match!")
}
