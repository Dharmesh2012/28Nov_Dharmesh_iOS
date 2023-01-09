//
//  main.swift
//  D_M2_Ass_10_iOs
//
//  Created by MAC2 on 03/01/23.
//

import Foundation

//wap to find maximum number  from four variables using conditional (?) operator

var one = 30
var two = 50
var three = 10
var four = 90

(one > two && one > three && one > four) ? print("one is maximum") :
    (two > one && two > three && two > four) ? print("two is maximum") :
    (three > one && three > two && three > four) ? print("three is maximum") :
    (four > one && four > two && four > three) ? print("four is maximum") :
print("all are same")



