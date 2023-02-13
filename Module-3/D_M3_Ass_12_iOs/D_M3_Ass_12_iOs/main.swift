//
//  main.swift
//  D_M3_Ass_12_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import Foundation

//WAP to make a protocol with optional and required methods and use within a class.

class aClass {
    var getDelegate : UseProtocol?
    func getdetails() {
        getDelegate?.nameRequired(name: "DHarmesh")
        getDelegate?.idRequired(id: 15)
        getDelegate?.genderOptional?(gender: "Male")
    }
    
}

class myClass : UseProtocol {
    func nameRequired(name: String) {
        print("Hii", name)
    }
    
    func idRequired(id: Int) {
        print("Your id is", id)
    }
    
    func forDelegate() {
        let obj = aClass()
        obj.getDelegate = self
        obj.getdetails()
    }
    
}
@objc protocol UseProtocol {
    func nameRequired(name : String)
    func idRequired(id : Int)
    @objc optional func genderOptional(gender : String)
}

myClass().forDelegate()
