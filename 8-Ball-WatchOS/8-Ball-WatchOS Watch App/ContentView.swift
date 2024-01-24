//
//  ContentView.swift
//  8-Ball-WatchOS Watch App
//
//  Created by Ege Gökmen on 24/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var ball_number = 1
    
    var body: some View {
        VStack {
            
             EightBall(n: ball_number).onTapGesture {
                   self.ball_number = Int.random(in: 1...5)
                }
             .padding()
            }
        }
    }

    struct EightBall: View {
        let n: Int
        
        var body: some View {
            
            Image("ball\(n)").resizable().aspectRatio(contentMode: .fit)
            
        }
        
    }
    

    #Preview {
        ContentView()
    }
    

