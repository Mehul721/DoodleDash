//
//  MenuView.swift
//  DoodleDash
//
//  Created by Mehul Jain on 11/08/24.
//

import SwiftUI

struct MenuView: View {
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
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(30)

                Spacer()
                
                
                Button(action: {
         
                }) {
                    Text("PLAY")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 100)
                        .background(Capsule().fill(Color.clear))
                }
                .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
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
                Text(matchManager.authenticationState.rawValue)
                    .font(.caption2)
                    .foregroundColor(Color("black"))
                    .padding()
            }
        }
    }
}


#Preview {
    MenuView(matchManager: MatchManager())
}


