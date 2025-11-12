//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by Parker Engelson on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = Array(repeating: "", count: 9)
    @State private var xTurn = true
    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3)) {
               ForEach(0..<9) { index in 
                   ZStack{
                       Color.blue
                       Text(moves[index])
                           .font(.system(size: 90))
                           .fontWeight(.heavy)
                   }
                  
                       .frame(width: 120, height: 120, alignment: .center)
                       .cornerRadius(30)
                       .onTapGesture {
                           if moves[index] == "" {
                               
                               
                               moves[index] = xTurn ? "X" : "O"
                               xTurn.toggle()
                           }
                       }
                   
                   
                  
                }
               
              
            }
            Text("Tic Tac Toe")
                .bold()
                .font(.largeTitle)
                
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
