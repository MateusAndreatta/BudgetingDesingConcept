//
//  CategorySummaryCardView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 26/01/25.
//

import SwiftUI

struct CategorySummaryCardView: View {
    
    let category: Category
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    
                    category.color
                        .opacity(0.1)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .frame(width: 45, height: 45)
                    
                    category.icon
                        .foregroundStyle(category.color)
                }
                
                Text(category.name)
                    .foregroundStyle(.neutral1000)
                    .font(.system(size: 16))
                
                Spacer()
                
                Text("$\(category.total.formatted())")
                    .foregroundStyle(.neutral800)
                    .font(.system(size: 16))
            }
            
            ForEach(category.subcategory) { subcategory in
                SubCategoryItemView(subcategory: subcategory,
                                    progressColor: category.color)
            }

        }
        .padding(20)
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(.neutral400, lineWidth: 1)
        )
    }
}

#Preview {
    
    CategorySummaryCardView(category: .init(name: "Auto & transport",
                                            color: .categoryPurple,
                                            icon: Image(systemName: "car.fill"),
                                            subcategory: [.init(name: "Auto & transport", value: 350, maxValue: 500),
                                                          .init(name: "Auto insurance", value: 250, maxValue: 300)]))
}
