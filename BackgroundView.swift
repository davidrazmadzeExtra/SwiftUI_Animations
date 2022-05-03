//
//  BackgroundView.swift
//  VoiceChanger
//
//  Created by David Razmadze on 11/2/21.
//

import SwiftUI

/// Background Gradient
struct BackgroundView: View {
  
  // MARK: - Properties
  
  let gradient = Gradient(colors: [.pink, .mint, .indigo])
  let gradient2 = Gradient(colors: [.mint, .purple, .white])
  @State private var value = 1.0
  
  // MARK: - View Body
  
  var body: some View {
    
    ZStack {

      LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottomTrailing)
        .ignoresSafeArea(.all, edges: .all)
        .opacity(value)
        .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: value)

      LinearGradient(gradient: gradient2, startPoint: .top, endPoint: .bottomTrailing)
        .ignoresSafeArea(.all, edges: .all)
        .opacity(value / 4)
        .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: value)
      
    }
    .onAppear {
      value = 4
    }
  }
  
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView()
  }
}
