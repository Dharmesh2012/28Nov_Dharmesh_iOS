//
//  main.swift
//  D_M3_Ass_10_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import Foundation

//WAP to make a structure to store ten bank account details.



struct BankDetails {
        var custName : String? = "Dharmesh"
        
        var bankName : String? = "Bank of Baroda"
        
        var branchName : String? = "Lal Bunglow Branch"
        
        var accNum : Int? = 1234567890
        
        var ifcs : String = "BAR1234"
        
        var city : String? = "Jamnagar"
        
        var pincode : Int? = 123456
        
        var accountType : String? = "Saving"
        
        var wantPassbook : String? = "Yes"
        
        var feedback : String? = "Average service you give to your customers."
}
var getobjc = BankDetails()

print("Name is :",getobjc.custName ?? "")
print("Pincode is :",getobjc.pincode ?? "")


