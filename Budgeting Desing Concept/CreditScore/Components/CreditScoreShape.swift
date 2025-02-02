//
//  CreditScoreShape.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 01/02/25.
//
import SwiftUI

struct CreditScoreShape: Shape {
    var progress: Double
    
    func path(in rect: CGRect) -> Path {
        let startAngle: Angle = .degrees(180)
        let endAngle: Angle = .degrees(0)
        
        return Path { path in
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.maxY),
                radius: rect.width / 2,
                startAngle: startAngle,
                endAngle: endAngle,
                clockwise: false
            )
        }
    }
}
