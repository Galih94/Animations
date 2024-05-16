//
//  ContentView.swift
//  Animations
//
//  Created by Galih Samudra on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        return VStack {
            Button("Tap me") {
                withAnimation (.spring(duration: 1, bounce: 0.5)) {
                    animationAmount += 360
                }
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.ellipse)
            .rotation3DEffect(
                .degrees(animationAmount), axis: (x: 1.0, y: 0.0, z: 0.0)
            )
        }
    }
}

#Preview {
    ContentView()
}
