//
//  User.swift
//  SimpleMVP
//
//  Created by MacBook Pro on 26/8/22.
//
import Foundation
struct User {
    let firstName : String
    let lastName  : String
    let age       : Int
}

class UserService {
    func getUsers(callback : @escaping ([User]) -> Void) {
        let user = [
            User
        ]()
        
        let dispatchTime = DispatchTime.now() + Double(Int64(0.1 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            callback(user)
        }
    }
}
