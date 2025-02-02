//
//  CreditScoreProps.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 01/02/25.
//

import Foundation

struct CreditScoreProps {
    
    let progress: Double
    let segmentsSize = [0.4, 0.2, 0.2, 0.2]
    
    var progressSegmentValue: [Double] {
        guard progress >= 0, progress <= 1 else { return [0, 0, 0, 0] }
        
        var remaining = progress
        let part1 = min(remaining, 0.4)
        remaining -= part1
        
        let part2 = min(remaining, 0.2)
        remaining -= part2
        
        let part3 = min(remaining, 0.2)
        remaining -= part3
        
        let part4 = min(remaining, 0.2)
        return [part1, part2, part3, part4]
    }
}
