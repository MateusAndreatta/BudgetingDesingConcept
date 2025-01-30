//
//  BillsView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 27/01/25.
//

import SwiftUI

struct BillsView: View {
    
    let subscriptions: [Subscription]
    
    var body: some View {
        VStack() {
            Text("Your monthly payment\nfor subcriptions")
                .multilineTextAlignment(.center)
                .foregroundStyle(.neutral800)
                .font(.system(size: 14))
            Text("$61.88")
                .bold()
                .foregroundStyle(.neutral1000)
                .font(.system(size: 48))
            
            VStack {
                ForEach(subscriptions) { subscription in
                    SubscriptionItemView(subscription: subscription)
                }
            }
            .padding(20)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(.neutral400, lineWidth: 1)
            )

        }
        .padding(24)
    }
}

#Preview {
    
    let subscriptions: [Subscription] = [
        .init(title: "Patreon membership", value: "$19.99/mo", imageName: "Patreon"),
        .init(title: "Netflix", value: "$12/mo", imageName: "Netflix"),
        .init(title: "Apple payment", value: "$19.99/mo", imageName: "Apple"),
        .init(title: "Spotify", value: "$6.99/mo", imageName: "Spotify"),
    ]
    
    BillsView(subscriptions: subscriptions)
}
