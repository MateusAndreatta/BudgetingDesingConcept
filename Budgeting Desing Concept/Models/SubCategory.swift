//
//  SubCategory.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 26/01/25.
//
import Foundation

struct SubCategory: Identifiable {
    let id = UUID()
    let name: String
    let value: Double
    let maxValue: Double
    
    var leftValue: Double {
        maxValue - value
    }
    
    var progress: Double {
        value / maxValue
    }
}
