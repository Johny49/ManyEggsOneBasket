//
//  User.swift
//  ManyEggsOneBasket
//
//  Created by Geoffrey Johnson on 2/5/22.
//

import Foundation

class User {
    let uid: String
    let email: String?
    let displayName: String?
    
    init(uid: String, displayName: String?, email: String?) {
        self.uid = uid
        self.email = email
        self.displayName = displayName
    }
}
