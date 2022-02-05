//
//  Groceries.swift
//  ManyEggsOneBasket
//
//  Created by Geoffrey Johnson on 2/5/22.
//

import Foundation
import FirebaseDatabase
import nanopb

struct Groceries: Identifiable {
    let ref: DatabaseReference?
    let key: String
    let groceryItem: String
    let isPurchased: Bool
    let id: String

init(groceryItem: String, isPurchased: Bool, key: String = "") {
    self.ref = nil
    self.key = key
    self.groceryItem = groceryItem
    self.isPurchased = isPurchased
    self.id = key
}

init?(snapshot: DataSnapshot) {
    guard
        let value = snapshot.value as? [String: AnyObject],
        let groceryItem = value["groceryItem"] as? String,
        let isPurchased = value["isPurchased"] as? Bool
    else {
        return nil
    }
    self.ref = snapshot.ref
    self.key = snapshot.key
    self.groceryItem = groceryItem
    self.isPurchased = isPurchased
    self.id = snapshot.key
}

    func toAnyObject() -> Any {
        return ["groceryItem": groceryItem,
                "isPurchased": isPurchased]
    }

}
