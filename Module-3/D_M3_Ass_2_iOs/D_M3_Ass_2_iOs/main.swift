//
//  main.swift
//  D_M3_Ass_2_iOs
//
//  Created by MAC2 on 11/01/23.
//

import Foundation

//wap to take two key like colors, digits.. and values of it, values should be an array, then get that specific value from array.

var mainDict = [
    
        "colors" : ["red", "green", "blue", "cyan", "magenta", ["black","white"]],
        "digits" : ["1", "2", "3", "4", "5"]

]

print(mainDict["colors"] ?? "")
print(mainDict["colors"]?[1] ?? "")
print(mainDict["colors"]?[5] ?? "")
//print(mainDict["colors"]?[5] [1])
