//
//  ContentView.swift
//  Animations
//
//  Created by Galih Samudra on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("Helllo SwiftUI")
    @State private var dragAmount = CGSize.zero
    @State private var enable = false
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { index in
                Text(String(letters[index]))
                    .padding(5)
                    .font(.title)
                    .background(enable ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(index) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged({ value in
                    dragAmount = value.translation
                })
                .onEnded({ _ in
                    dragAmount = .zero
                    enable.toggle()
                })
        )
    }
}

#Preview {
    ContentView()
}
