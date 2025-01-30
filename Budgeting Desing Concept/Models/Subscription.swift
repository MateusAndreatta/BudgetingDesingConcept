//
//  Subscription.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 29/01/25.
//

import Foundation

struct Subscription: Identifiable {
    let id = UUID()
    let title: String
    let value: String
    let imageName: String
}
