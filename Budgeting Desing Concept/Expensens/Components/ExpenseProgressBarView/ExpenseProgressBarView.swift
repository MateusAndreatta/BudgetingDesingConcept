//
//  ExpenseProgressBarView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 26/01/25.
//

import SwiftUI

struct ExpenseProgressBarView: View {
    let progressCategories: [(color: Color, value: Double)]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Color.neutral400
                
                HStack(spacing: .zero) {
                    ForEach(0..<progressCategories.count, id: \.self) { index in
                        let segment = progressCategories[index]
                        Rectangle()
                            .fill(segment.color)
                            .frame(width: geometry.size.width * CGFloat(segment.value))
                    }
                }
            }

       }
       .frame(height: 8)
       .cornerRadius(6)
    }
}

#Preview {
    ExpenseProgressBarView(progressCategories: [
        (color: .categoryBlue, value: 0.13),
        (color: .categoryOrange, value: 0.3),
        (color: .categoryPurple, value: 0.2)
    ])
}
