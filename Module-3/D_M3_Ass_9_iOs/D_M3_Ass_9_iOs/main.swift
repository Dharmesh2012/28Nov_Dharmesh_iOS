//
//  main.swift
//  D_M3_Ass_9_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import Foundation

//WAP to make three same function within two diff class using method overriding.

class FirstDemo {
    func oneFirst() {
        print("My name is Dharmesh.")
    }
    
    func two() {
        print("Dharmesh's hobby is playing chess.")
    }
    
    func three() {
        print("Dharmesh's favourite animal is Dog.")
    }
}

class SecondDemo : FirstDemo{
        func oneSecond() {
        print("My name is Bhavin")
    }
    
    override func two() {
        print("Bhavin's hobby is playing cricket.")
    }
    
    override func three() {
        print("Bhavin's favourite animal is Cat.")
    }
 
}
func show() {
    FirstDemo().oneFirst()
    SecondDemo().oneFirst()
    SecondDemo().oneSecond()
    SecondDemo().two()
}
show()

