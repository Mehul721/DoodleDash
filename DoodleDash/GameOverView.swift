//
//  GameOverView.swift
//  DoodleDash
//
//  Created by Mehul Jain on 14/08/24.
//

import SwiftUI

struct GameOverView: View {
    
    @ObservedObject var matchManager: MatchManager
    @State var isAnimating = false
    let gradient = Gradient(colors: [.purple, .black])
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.yellow, Color.primaryYellow],
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("GameOver")
                    .resizable()
                    .scaledToFit()
                    .padding(30)

                Text("Score:\(matchManager.score)")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                Spacer()
                
                Button(action: {
         
                }) {
                    Text("MENU")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.vertical, 18)
                        .padding(.horizontal, 70)
                        .background(Capsule().fill(Color.clear))
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(
                            LinearGradient(gradient: gradient,
                                           startPoint: isAnimating ? .topLeading : .bottomTrailing,
                                           endPoint: isAnimating ? .bottomLeading : .topTrailing),
                            lineWidth: 5
                        )
                        
                        .animation(
                            .easeInOut(duration: 1.5)
                                .repeatForever(autoreverses: true),
                            value: isAnimating
                        )
                        
                )
                .onAppear {
                    isAnimating = true
                }
                
                Spacer()
                
                    
            }
        }
    }
}


#Preview {
    GameOverView(matchManager: MatchManager())
}
