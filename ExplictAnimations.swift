//
//  ContentView.swift
//  AnimationExample
//
//  Created by David Razmadze on 11/21/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: - Properties
  
  @State private var imageOpacity = 1.0
  
  // MARK: - View Body
  
  var body: some View {
    ZStack {
      
      Color.black.ignoresSafeArea()
      
      VStack {
        
        // Test Image
        Image(systemName: "clear")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .foregroundColor(.white)
          .frame(width: 50, height: 50)
          .padding()
          .opacity(imageOpacity)
        
        // Trigger Animation
        Button {
          withAnimation(.easeInOut) {
            self.imageOpacity = 0.2
          }
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
