//
//  DatabaseManager.swift
//  D_M678_Ass_5_iOs
//
//  Created by Dharmesh N. Agravat on 28/04/23.
//

import UIKit
import CoreData

struct UserModel {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}

class DatabaseManager {
    
    var context : NSManagedObjectContext {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    func addUser(user : UserModel){
        
        let userEntity = UserEntity(context: context) //usercreate
        userEntity.firstName = user.firstName
        userEntity.lastName = user.lastName
        userEntity.email = user.email
        userEntity.password = user.password
        
       saveContext()
    }
    
    func fetchUser() -> [UserEntity] {
        var users : [UserEntity] = []
        do {
            users = try self.context.fetch(UserEntity.fetchRequest())
        }
        catch{
            print("Error in Fetch", error)
        }
        return users
    }
    
    func updateUser(user: UserModel, userEntity : UserEntity) {
      
        userEntity.firstName = user.firstName
        userEntity.lastName = user.lastName
        userEntity.email = user.email
        userEntity.password = user.password
            
        saveContext()
      
    }
    
    func deleteUser(userEntity : UserEntity) {
        context.delete(userEntity)
        saveContext()
    }
    
    func saveContext() {
        do {
            try context.save()
        }
        catch{
            print("Saving Error", error)
        }
    }
    
}
