//
//  GameView.swift
//  DoodleDash
//
//  Created by Mehul Jain on 14/08/24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    @State var eraserEnabled = false
    @State var DrawingGuess = ""
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image(matchManager.currentlyDrawing ? "drawBg" : "guesserBg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    
                    
                    
                VStack {
                    topBar
                    ZStack {
                        DrawingView(matchManager: matchManager, eraserEnabled: $eraserEnabled)
                            .aspectRatio(1, contentMode: .fit)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 10)
                            )
                        VStack {
                            HStack {
                                Spacer()
                                
                                if matchManager.currentlyDrawing {
                                    Button {
                                        eraserEnabled.toggle()
                                    } label: {
                                        Image(systemName: eraserEnabled ? "eraser.fill" : "eraser")
                                            .font(.title)
                                            .foregroundColor(Color("primaryPurple"))
                                            .padding(.top, 10)
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
    
    var topBar: some View {
        ZStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                        .font(.largeTitle)
                        .tint(Color(matchManager.currentlyDrawing ? "primaryPurple" : "primaryRed"))
                })
                Spacer()
                
                Label("\(matchManager.remainingTime)",
                      systemImage: "clock.fill")
                .bold()
                .font(.title2)
                .foregroundStyle(Color(matchManager.currentlyDrawing ? "primaryPurple" : "primaryRed"))
            }
        }
        .padding(.vertical, 15)
    }
}

#Preview {
    GameView(matchManager: MatchManager())
}


        #Preview {
            GameView(matchManager: MatchManager())
        }
    
