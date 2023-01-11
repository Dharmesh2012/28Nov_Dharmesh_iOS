//
//  main.swift
//  D_M2_Ass_19_iOs
//
//  Created by MAC2 on 10/01/23.
//

import Foundation

//wap to check an array has elements or not if yes then print elements or print "an empty array".

var arrOfDetails : [String] = []

print("Enter your name")
var name = readLine()

print("Enter your City")
var city = readLine()

print("Enter your gender")
var gender = readLine()


//arrOfDetails.append(name!)
//arrOfDetails.append(city!)
//arrOfDetails.append(gender!)

/*if arrOfDetails.count==0
{
    print("Empty array")
}
else
{
    print(arrOfDetails)
}*/

if name=="" || city=="" || gender==""
{
    print("Empty array")
}
else
{
    arrOfDetails.append(name!)
    arrOfDetails.append(city!)
    arrOfDetails.append(gender!)
}
print(arrOfDetails)

/*if name != nil || city != nil || gender != nil  {
    arrOfDetails.append(name!)
    arrOfDetails.append(city!)
    arrOfDetails.append(gender!)
    print(arrOfDetails)
}
else {
 print("Empty array")
}
*/
