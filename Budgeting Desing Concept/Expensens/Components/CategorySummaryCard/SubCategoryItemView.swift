//
//  SubCategoryItemView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 26/01/25.
//

import SwiftUI

struct SubCategoryItemView: View {
    
    let subcategory: SubCategory
    let progressColor: Color
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                Text(subcategory.name)
                    .bold()
                    .foregroundStyle(.neutral1000)
                    .font(.system(size: 16))
                
                ProgressView(value: subcategory.progress)
                    .tint(progressColor)
            }

            Spacer()
            
            VStack(alignment: .trailing) {
                
                Text("$\(subcategory.value.formatted())")
                    .bold()
                    .foregroundStyle(.neutral1000)
                    .font(.system(size: 16))
                
                Text("Left $\(subcategory.leftValue.formatted())")
                    .foregroundStyle(.neutral800)
                    .font(.system(size: 12))
            }
            .padding(.top)
            
        }
    }
}

#Preview {
    SubCategoryItemView(subcategory: .init(name: "Auto & transport", value: 350, maxValue: 500), progressColor: .categoryBlue)
}
