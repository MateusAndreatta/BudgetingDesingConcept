//
//  MockedData.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 07/02/25.
//

import SwiftUI

struct MockedData {
    
    let categories: [Category] = [.init(name: "Auto & transport",
                                        color: .categoryPurple,
                                        icon: Image(systemName: "car.fill"),
                                        subcategory: [.init(name: "Auto & transport", value: 350, maxValue: 500),
                                                      .init(name: "Auto insurance", value: 250, maxValue: 300)]),
                                  .init(name: "Bill & Ultilities",
                                        color: .categoryOrange,
                                        icon: Image(systemName: "newspaper.fill"),
                                        subcategory: [.init(name: "Subscriptions", value: 52, maxValue: 52),
                                                      .init(name: "House service", value: 138, maxValue: 148),
                                                      .init(name: "Maintenance", value: 130, maxValue: 160)])]
    
    let subscriptions: [Subscription] = [
        .init(title: "Patreon membership", value: "$19.99/mo", imageName: "Patreon"),
        .init(title: "Netflix", value: "$12/mo", imageName: "Netflix"),
        .init(title: "Apple payment", value: "$19.99/mo", imageName: "Apple"),
        .init(title: "Spotify", value: "$6.99/mo", imageName: "Spotify"),
    ]
}
