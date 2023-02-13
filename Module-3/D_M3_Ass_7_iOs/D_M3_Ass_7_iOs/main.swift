//
//  main.swift
//  D_M3_Ass_7_iOs
//
//  Created by MAC2 on 27/01/23.
//

import Foundation

//wap to make class of bank account of person which should perform all banking operations using functions.

class Bank_Account
{
    var customer_id : Int?
    var customer_name : String?
    var customer_accountbal : Int?
    var customer_interest : Int?
    var customer_charges : Int?
    var customer_withdrawl : Int?
    var tot:Int?
    var tot2 : Int?
    
    func calculateBalance () {
     
      tot = (customer_accountbal ?? 0) + (customer_interest ?? 0)
        print("Total balance of customer with interest",tot)
        
        tot2 = (tot ?? 0) - (customer_withdrawl ?? 0) - (customer_charges ?? 0)
        print("Net total balance of customer after minus charges and withdrawl =" , tot2)
    }
    
}

var total = Bank_Account()
total.customer_accountbal = 300000
total.customer_interest = 10000
total.customer_withdrawl = 120000
total.customer_charges = 5000

total.calculateBalance()
