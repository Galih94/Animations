//
//  ContentView.swift
//  Animations
//
//  Created by Galih Samudra on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View {
        return VStack {
            Button("Tap me") {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .foregroundStyle(.white)
            .animation(.default, value: enabled)
        }
    }
}

#Preview {
    ContentView()
}
