//
//  main.swift
//  D_M3_Ass_8_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import Foundation

//WAP to make an employee class which properties should access through manager class.

class Employee {
    var emp1Name : String?
    var emp1Salary : Int?
    
    var emp2Name : String?
    var emp2Salary : Int?
    
    func show() {
        print("Employee 1 name is :")
        print("Employee 2 name is :")
        
        print("Employee 1 salary is :")
        print("Employee 2 salary is :")
    }
}

class Manager : Employee {
    func getFunc() {
        print("Hey Employee1, Tell me your name please")
        var getName = readLine()
        emp1Name = getName
        
        print("Hey Employee2, Tell me your name please")
        var getName2 = readLine()
        emp2Name = getName2
        
        print("Hey Employee1, Tell me your salary please")
        var getSalary1 = Int(readLine()!)!
        emp1Salary = (getSalary1)
        
        print("Hey Employee2, Tell me your salary please")
        var getSalary2 = Int(readLine()!)!
        emp2Salary = getSalary2
    }
}
var objget = Manager()
objget.getFunc()

objget.show()
    print(objget.emp1Name ?? "")
    print(objget.emp2Name ?? "")
    print(objget.emp1Salary ?? "")
    print(objget.emp2Salary ?? "")

