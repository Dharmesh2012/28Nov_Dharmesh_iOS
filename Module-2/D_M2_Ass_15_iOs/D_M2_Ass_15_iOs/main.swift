//
//  main.swift
//  D_M2_Ass_15_iOs
//
//  Created by MAC2 on 10/01/23.
//

import Foundation

//wap to make array of dictionaries and get a value from specific dictionaries.

var arrOfDict = [
    [
        "India" : "Delhi",
        "England" : "London",
        "Japan" : "Tokyo",
        "USA" : "Washington DC"
    ],
    
    [
        "Gujarat" : "Gandhinagar",
        "Punjab" : "Chandigarh",
        "Uttar Pradesh" : "Lucknow"
    ]
]
arrOfDict.append(["asdf" : "qwer"])

for i in 0..<arrOfDict.count
{
   
    print(arrOfDict[i]["India"] as Any)
    print(arrOfDict[i]["Gujarat"] as Any)
}
