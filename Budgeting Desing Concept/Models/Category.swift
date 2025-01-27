//
//  Category.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 26/01/25.
//

import Foundation
import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let icon: Image
    let subcategory: [SubCategory]
    
    var total: Double {
        subcategory.reduce(0) { $0 + $1.value }
    }
}

