//
//  ContentView.swift
//  FirstApp
//
//  Created by Andrea on 11-03-22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var numHearts = 99
    
    var body: some View {
        
        VStack {
            
            Image("landscape")
                .resizable()
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
            
            HStack {
                Button (action: {
                    self.isHearted.toggle()
                    
                    if self.isHearted {
                        numHearts += 1
                    }
                    else {
                        numHearts -= 1
                    }
                }) {
                    if isHearted {
                        Image(systemName: "heart.fill")
                    }
                    else {
                        Image(systemName: "heart")
                    }
                }
                
                Text(String(numHearts))
            }
            
            Text("This landscape is totally amazing!")
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.1, x: 2, y: 2)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
