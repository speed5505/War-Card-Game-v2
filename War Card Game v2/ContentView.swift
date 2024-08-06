//
//  ContentView.swift
//  War Card Game v2
//
//  Created by Kabir Rajkotia on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var playerCard = "card7"
        var cpuCard = "card13"
        var playerScore = 0
        var cpuScore = 0
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                 
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    
    func deal() {
        print("deal cards")
        
    }
}

#Preview {
    ContentView()
}
