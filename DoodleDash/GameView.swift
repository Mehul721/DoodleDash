//
//  GameView.swift
//  DoodleDash
//
//  Created by Mehul Jain on 14/08/24.
//

import SwiftUI
struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    @State var eraserEnabled=""
    @State var DrawingGuess=""
    
    var body: some View {
        ZStack{
            GeometryReader{_ in
                Image(matchManager.currentlyDrawing ? "drawBg" : "guesserBg")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(1.1)
                    .ignoresSafeArea()
                    
                VStack{
                    
                    topBar
                    
                }
                
                        }
                    }
                    
                }
    var topBar:some View{
        ZStack{
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                }
                
                )
            }
            
        }
    }
}

        #Preview {
            GameView(matchManager: MatchManager())
        }
    
