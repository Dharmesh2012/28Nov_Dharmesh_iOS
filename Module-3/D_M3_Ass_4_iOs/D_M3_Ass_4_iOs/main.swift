//
//  main.swift
//  D_M3_Ass_4_iOs
//
//  Created by MAC2 on 11/01/23.
//

import Foundation

//wap to swap of two number using in - out parameters within function.


print("Enter A:")
var a=Int(readLine()!)!
print("Enter b:")
var b=Int(readLine()!)!

func swapNum(_ a : inout Int, _ b : inout Int)
{
    let tempA = a
    a = b
    b = tempA
    print("a is ",a)
    print("b is ",b)


}
swapNum(&a, &b)
//swapNum(10, 50)
