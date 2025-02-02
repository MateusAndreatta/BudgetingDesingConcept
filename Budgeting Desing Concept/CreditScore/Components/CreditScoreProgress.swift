//
//  CreditScoreProgress.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 01/02/25.
//

import SwiftUI

struct CreditScoreProgress<Content: View>: View {
    
    let props: CreditScoreProps
    var contentView: Content
    
    init(props: CreditScoreProps, @ViewBuilder contentView: () -> Content) {
        self.props = props
        self.contentView = contentView()
    }
    
    var body: some View {
        ZStack {
            

            ForEach(0..<props.segmentsSize.count, id: \.self) { index in
                let start = props.segmentsSize.prefix(index).map { $0 }.reduce(0, +)
                let end = start + props.segmentsSize[index] - ( index == 3 ? 0 : 0.04)
                
                CreditScoreShape(progress: min(props.progress, end))
                    .trim(from: start, to: end)
                    .stroke(Color.gray.opacity(0.3), style: StrokeStyle(lineWidth: 12, lineCap: .round))
            }
            
            
            ForEach(0..<props.segmentsSize.count, id: \.self) { index in
                let start = props.progressSegmentValue.prefix(index).map { $0 }.reduce(0, +)
                let end = start + props.progressSegmentValue[index] - ( index == 3 ? 0 : 0.04)
                
                CreditScoreShape(progress: min(props.progress, end))
                   .trim(from: start, to: end)
                   .stroke(.purple.gradient, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                   .animation(.easeInOut(duration: 1), value: props.progress)
            }
            
            contentView

        }
    }
    
}
