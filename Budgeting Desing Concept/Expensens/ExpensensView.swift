//
//  ExpensensView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 26/01/25.
//

import SwiftUI

struct ExpensensView: View {
    
    let categories: [Category]
    
    var body: some View {
        
        VStack {
            Text("September 2020")
                .foregroundStyle(.neutral800)
                .font(.system(size: 14))
            Text("$1,812")
                .bold()
                .foregroundStyle(.neutral1000)
                .font(.system(size: 48))
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Left to spend")
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 14))
                        Text("$743")
                            .bold()
                            .foregroundStyle(.neutral1000)
                            .font(.system(size: 18))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Monthly budget")
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 14))
                        Text("$2,550")
                            .bold()
                            .foregroundStyle(.neutral1000)
                            .font(.system(size: 18))
                    }
                }
                ExpenseProgressBarView(progressCategories: [
                    (color: .categoryBlue, value: 0.13),
                    (color: .categoryOrange, value: 0.3),
                    (color: .categoryPurple, value: 0.2)
                ])
            }
            .padding(20)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(.neutral400, lineWidth: 1)
            )
            .padding(.bottom, 20)
            
            ForEach(categories) { category in
                HStack {
                    CategorySummaryCardView(category: category)
                        .padding(.bottom, 20)
                }

            }
            
        }
        .padding()
        

    }
}

#Preview {
    
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
    
    ExpensensView(categories: categories)
}
