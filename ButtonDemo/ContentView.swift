//
//  ContentView.swift
//  ButtonDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    
    var body: some View {
        VStack (spacing: 20) {
            Text("\(counter)")
                .font(.largeTitle)
                .padding()
            
            Button("Tap me!") {
                counter += 1
            }
            
            Button(action: superTap) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Super tap!")
                }
            }
            
            Image(systemName: "trash")
                .font(.largeTitle)
                .foregroundColor(.red)
                .onTapGesture {
                    counter = 0
                }
        }
    }
    
    func superTap() {
        counter += 2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
