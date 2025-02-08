//
//  ContentView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 26/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    
    let mock = MockedData()
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedTab) {
                ExpensensView(categories: mock.categories)
                    .tag(0)
                    .tabItem {
                        Label("Expenses", systemImage: "person.3")
                    }
                
                BillsView(subscriptions: mock.subscriptions)
                    .tag(1)
                    .tabItem {
                        Label("Bills", systemImage: "person.3")
                    }
                
                CreditScoreView()
                    .tag(2)
                    .tabItem {
                        Label("Credit score", systemImage: "person.3")
                    }
            }
            .toolbar {
               ToolbarItem(placement: .principal) {
                   Text(getSelectedTabTitle())
                       .font(.headline)
               }
           }
        }
    }
    
    func getSelectedTabTitle() -> String {
        switch selectedTab {
        case 0:
            return "Expenses"
        case 1:
            return "Bills"
        default:
            return "Credit score"
        }
    }
}

#Preview {
    ContentView()
}
