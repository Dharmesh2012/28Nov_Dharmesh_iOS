//
//  main.swift
//  D_M2_Ass_14_iOs
//
//  Created by MAC2 on 09/01/23.
//

import Foundation

//write a program to perform operation like Union, intersection etc. using set.

    // union between two sets

var firstSet : Set = [1, 3, 5, 7, 9]
print("First Set Element",firstSet)

var secondSet : Set = [2, 4, 6, 8, 10]
print("Second Set Element",secondSet)

print("Union of Two Sets", firstSet.union(secondSet))



    //intersection between two sets
var oneSet : Set<Int> = [1, 2, 5, 8, 9]
var twoSet : Set<Int> = [1, 3, 6, 8, 7]

print("Intersection of two sets are", oneSet.intersection(twoSet))


    //substraction between two sets

var numOneSet : Set <Int> = [1, 3, 5, 7, 9]
var numTwoSet : Set <Int> = [1, 4, 6, 7, 8]

print("Substraction between two sets are", numOneSet.subtracting(numTwoSet))

    //symmetric difference

var aSet : Set<Int> = [1, 4, 5, 9]
var bSet : Set<Int> = [1, 4, 5, 7]

print("symmetric difference between two sets are :", aSet.symmetricDifference(bSet))

