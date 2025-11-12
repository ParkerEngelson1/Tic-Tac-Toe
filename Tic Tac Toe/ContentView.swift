//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by Parker Engelson on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3)) {
                Text("X")
               Text("X")
               Text("X")
              Text("X")
               Text("X")
              Text("X")
               Text("X")
              Text("X")
               Text("X")
              
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
