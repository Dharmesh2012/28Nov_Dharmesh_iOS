//
//  DMLOperation.swift
//  D_M678_Ass_4_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit
import SQLite3

class DMLOperations: NSObject {
    
    func performQuary(queryType: QueryType, param: String) -> Bool{
        var strPath = ""
        let directoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strPath  = directoryPath + locatDatabaseName
        print(strPath)
        
        var statement: OpaquePointer? = nil
        let query = queryType.queryString + param
        var status = Bool()
        
        if sqlite3_open(strPath, &statement) == SQLITE_OK {
            if sqlite3_prepare_v2(statement, query, -1, &statement, nil) == SQLITE_OK  {
                status = true
                sqlite3_step(statement)
            }
            sqlite3_finalize(statement)
            sqlite3_close(statement)
        }
        
        return status
    }
    
    func showalldata(queryType: QueryType) -> [UserModel] {
        var strPath = ""
        let directoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strPath = directoryPath + locatDatabaseName
        print(strPath)
        
        var data: [UserModel] = []
        var statement: OpaquePointer? = nil
        
        if sqlite3_open(strPath, &statement) == SQLITE_OK {
            if sqlite3_prepare_v2(statement, queryType.queryString, -1, &statement, nil) == SQLITE_OK {
                while sqlite3_step(statement) == SQLITE_ROW {
                    let name = String.init(cString: sqlite3_column_text(statement, 1))
                    let city = String.init(cString: sqlite3_column_text(statement, 2))
                    
                    let userObj = UserModel()
                    userObj.name = name
                    userObj.city = city
                    data.append(userObj)
                }
            }
            sqlite3_finalize(statement)
            sqlite3_close(statement)
        }
        
        return data
    }
}

enum QueryType {
    case get(tableName: String)
    case insert(tableName: String)
    case update(tableName: String)
    case delete(tableName: String)
    
    var queryString: String {
        switch self {
        case .get(let tableName):
            return "select * from \(tableName)"
        case .insert(let tableName):
            return "insert into \(tableName) "
        case .update(let tableName):
            return "update \(tableName) set "
        case .delete(let tableName):
            return "delete from \(tableName) where "
        }
    }
}

class UserModel {
    var name: String?
    var city: String?
}

