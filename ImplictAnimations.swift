//
//  ContentView.swift
//  AnimationExample
//
//  Created by David Razmadze on 11/21/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: - Properties
  
  @State private var isAnimating = false
  
  // MARK: - View Body
  
  var body: some View {
    ZStack {
      
      Color.black.ignoresSafeArea()
      
      VStack {
        
        // Test Image
        Image(systemName: "clear")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .foregroundColor(isAnimating ? .green : .purple)
          .frame(width: 50, height: 50)
          .padding()
          // MARK: - Types of parameters you can animate
          // .opacity(isAnimating ? 0.2 : 1)
           .scaleEffect(isAnimating ? 2.0 : 1)
           .rotationEffect(isAnimating ? .degrees(90) : .degrees(0))
          .offset(x: isAnimating ? 100 : -100)
          .animation(Animation.spring(response: 5.0, dampingFraction: 10.0, blendDuration: 1), value: isAnimating)
        
        // Trigger Animation
        Button {
          self.isAnimating.toggle()
        } label: {
          Text("Trigger Animation")
            .foregroundColor(.blue)
            .font(.title)
        }
        
      }
      
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
