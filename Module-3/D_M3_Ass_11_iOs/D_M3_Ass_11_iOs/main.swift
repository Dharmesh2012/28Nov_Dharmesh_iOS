//
//  main.swift
//  D_M3_Ass_11_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import Foundation

//WAP to make a protocol for variables which should be used in class.


class User {
    var cd : abc?
    func printname() {
        cd?.getName(name: "Dharmesh", gender: "Male")
    }
}
class Temp : abc {

    func getName(name: String, gender: String) {
        print("My name is", name)
        print("Gender is", gender)
    }
    func setDelegate() {
        let userob = User()
        userob.cd = self
        userob.printname()
    }
  
}

protocol abc {
    func getName(name : String, gender : String)
    }

Temp().setDelegate()
