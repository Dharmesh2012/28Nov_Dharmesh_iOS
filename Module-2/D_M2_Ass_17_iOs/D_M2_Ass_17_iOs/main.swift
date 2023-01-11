//
//  main.swift
//  D_M2_Ass_17_iOs
//
//  Created by MAC2 on 10/01/23.
//

import Foundation

//wap tp print all values from array using loop.

var arrOfAnimals : [String] = [
    "Lion", "Cat", "Tiger", "Dog", "Squirrel", "Elephant", "Leapord", "Jaguar", "Cow", "Fox"
                        ]
for animal in arrOfAnimals {
    
   print(animal)

}

arrOfAnimals.append("WilderBeast")
arrOfAnimals.insert("Wolf", at: 1)
print(arrOfAnimals)
