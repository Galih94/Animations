//
//  ContentView.swift
//  Animations
//
//  Created by Galih Samudra on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        return VStack {
            LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 300, height: 200)
                .clipShape(.rect(cornerRadius: 10))
                .offset(dragAmount)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            dragAmount = value.translation
                        })
                        .onEnded({ value in
                            // MARK: to reset to og place
                            withAnimation(.bouncy) {
                                
                                dragAmount = .zero
                            }
                            
                            // MARK: to place it as it is
//                            dragAmount = value.translation
                        })
                )
        }
    }
}

#Preview {
    ContentView()
}
