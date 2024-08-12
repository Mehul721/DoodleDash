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
    let gradient = Gradient(colors: [.yellow, .black])
    
    var body: some View {
        ZStack{
             LinearGradient(
                colors: [Color.yellow, Color.primaryYellow],
                startPoint: .top, endPoint: .bottom)
             .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
                
                Spacer()
                
                Button(action: {
                    // Add your action here
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
                            .spring(duration: 2)
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
    MenuView(matchManager: MatchManager())
}
