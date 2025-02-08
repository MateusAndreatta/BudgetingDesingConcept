//
//  CreditScoreView.swift
//  Budgeting Desing Concept
//
//  Created by Mateus Andreatta on 29/01/25.
//

import SwiftUI

struct CreditScoreView: View {
    
    let score: Double = 860
    let minScore: Double = 400
    let maxScore: Double = 850
    
    var progress: Double {
        (score - minScore) / (maxScore - minScore)
    }
    
    var body: some View {
        
        VStack {
            CreditScoreProgress(props: .init(progress: 0.75)) {
                VStack {
                    Text("Good")
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text("\(Int(score))")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(.black)
                    
                    Text("+6pts")
                        .font(.subheadline)
                        .foregroundColor(.purple)
                }
                .padding(.top, 50)
            }
            .padding()
            .frame(height: 200)
            HStack {
                 Text("\(Int(minScore))")
                 Spacer()
                 Text("Last update on 20 Jul 2020")
                 Spacer()
                 Text("\(Int(maxScore))")
             }
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("On-time payments")
                            .bold()
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 16))
                        Text("Good")
                            .foregroundStyle(.statusGood)
                            .font(.system(size: 14))
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("95%")
                            .bold()
                            .foregroundStyle(.neutral1000)
                            .font(.system(size: 16))
                        Text("1 missed")
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 14))
                    }
                }
                
                Divider()
                    .padding(.vertical, 12)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Credit Utilization")
                            .bold()
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 16))
                        Text("Not bad")
                            .foregroundStyle(.statusNotBad)
                            .font(.system(size: 14))
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("95%")
                            .bold()
                            .foregroundStyle(.neutral1000)
                            .font(.system(size: 16))
                        Text("-15%")
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 14))
                    }
                }
                
                Divider()
                    .padding(.vertical, 12)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Age of credit")
                            .bold()
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 16))
                        Text("Good")
                            .foregroundStyle(.statusGood)
                            .font(.system(size: 14))
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("8 years")
                            .bold()
                            .foregroundStyle(.neutral1000)
                            .font(.system(size: 16))
                        Text("")
                            .foregroundStyle(.neutral800)
                            .font(.system(size: 14))
                    }
                }
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(.neutral400, lineWidth: 1)
            )
            .padding(.top, 32)

            Spacer()
        }
        .padding(24)
        

    }
}

#Preview {
    CreditScoreView()
}
