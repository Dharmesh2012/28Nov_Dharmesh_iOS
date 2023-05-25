//
//  Model Class.swift
//  D_M678_Ass_2_iOs
//
//  Created by Dharmesh N. Agravat on 28/04/23.
//

import UIKit

class Model_Class: Codable {
    var postId : Int?
    var id : Int?
    var name : String?
    var email : String?
    var body : String?
    
    init(postId: Int?, id: Int?, name: String?, email: String?, body: String?) {
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}
