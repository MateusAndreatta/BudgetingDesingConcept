//
//  SubscriptionItemView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 29/01/25.
//

import SwiftUI

struct SubscriptionItemView: View {
    
    let subscription: Subscription
    
    var body: some View {
        HStack(spacing: 18) {
            Image(subscription.imageName)
            VStack(alignment: .leading) {
                Text(subscription.title)
                    .foregroundStyle(.neutral800)
                    .font(.system(size: 14))
                Text(subscription.value)
                    .bold()
                    .foregroundStyle(.neutral1000)
                    .font(.system(size: 16))
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
    }
}

#Preview {
    SubscriptionItemView(subscription: .init(title: "Netflix",
                                             value: "$12/mo",
                                             imageName: "Netflix"))
}
