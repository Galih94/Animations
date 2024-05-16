//
//  ContentView.swift
//  Animations
//
//  Created by Galih Samudra on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        /* 
         Example using default animation to enlarge scale object and make it more blurry
         */
//        Button("Tap Me") {
//            animationAmount += 1
//            
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(.default, value: animationAmount)
        
        /*
         Example using spring animation with duration and bounce to enlarge scale object and make it more blurry
         */
//        Button("Tap Me") {
//            animationAmount += 1
//            
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
        
        /*
         Example using ease in out animation with duration to enlarge scale object and make it more blurry
         */
//        Button("Tap Me") {
//            animationAmount += 1
//
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(
//            .easeInOut(duration: 2), 
//            value: animationAmount
//        )
        
        /*
         Example using ease in out animation with duration and delay on start animation to enlarge scale object and make it more blurry
         */
//        Button("Tap Me") {
//            animationAmount += 1
//
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(
//            .easeInOut(duration: 2)
//            .delay(1),
//            value: animationAmount
//        )
        
        /*
         Example using ease in out animation with duration and repeat certain number animation to enlarge scale object and make it more blurry
         */
//        Button("Tap Me") {
//            animationAmount += 1
//
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(
//            .easeInOut(duration: 2)
//            .repeatCount(3, autoreverses: true),
//            value: animationAmount
//        )
        
        /*
         Example using ease in out animation with duration and repeat forever animation to enlarge scale object and make it more blurry
         */
//        Button("Tap Me") {
//            animationAmount += 1
//
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(
//            .easeInOut(duration: 2)
//            .repeatForever(autoreverses: true),
//            value: animationAmount
//        )
        
        /*
         Example using animation ease out in overlay to animate overlay and start on apparear animation with duration and repeat forever animation to enlarge overlay object
         */
        Button("Tap Me") { }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear(perform: {
            animationAmount = 2
        })
    }
}

#Preview {
    ContentView()
}
