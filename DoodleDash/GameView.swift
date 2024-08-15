//
//  GameView.swift
//  DoodleDash
//
//  Created by Mehul Jain on 14/08/24.
//
import PencilKit
import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    @State var eraserEnabled = false
    @State var DrawingGuess = ""
    
    func makeGuess(){
        
    }
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image(matchManager.currentlyDrawing ? "guesserBg" : "drawBg")
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
                                    VStack {
                                        Button {
                                            eraserEnabled.toggle()
                                        } label: {
                                            Image(systemName: eraserEnabled ? "eraser.fill" : "eraser")
                                                .font(.title)
                                                .foregroundColor(Color("primaryPurple"))
                                                .padding(10)
                                                .background(Color.white.opacity(0.8))
                                                .clipShape(Circle())
                                                .shadow(radius: 5)
                                        }
                                        .padding(.top, 10)
                                        .padding(.trailing, 10)
                                        
                                        // Undo button logic removed
                                    }
                                }
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                    pastGuess
                }
                .padding(.horizontal)
            }
            VStack {
                Spacer()
                promptGroup
            }
            .ignoresSafeArea(.container)
        }
    }
    
    var topBar: some View {
        ZStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                        .font(.largeTitle)
                        .tint(Color(matchManager.currentlyDrawing ? "guessingColor" : "primaryPurple"))
                })
                Spacer()
                
                Label("\(matchManager.remainingTime)",
                      systemImage: "clock.fill")
                .bold()
                .font(.title2)
                .foregroundStyle(Color(matchManager.currentlyDrawing ? "guessingColor" : "primaryPurple"))
            }
        }
        .padding(.vertical, 15)
    }
    
    var pastGuess: some View {
        ScrollView {
            ForEach(matchManager.pastGuesses) { guess in
                HStack {
                    Text(guess.message)
                        .font(.title2)
                        .bold()
                    
                    if guess.correct {
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundStyle(matchManager.currentlyDrawing ? Color("playingColor") : Color("guessingColor"))
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 10)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background((matchManager.currentlyDrawing ?
                     Color("playingColor") :
                     Color("guessingColor"))
        .opacity(0.7)
        )
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.vertical)
        .padding(.bottom, 110)
    }
    
    var promptGroup: some View {
        VStack {
            if matchManager.currentlyDrawing {
                Label("DRAW: ", systemImage: "exclamationmark.bubble.fill")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)
                Text(matchManager.drawPrompt.uppercased())
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundStyle(Color.yellow)
            }else{HStack{
                Label("Guess the drawing..", systemImage: "exclamationmark.bubble.fill")
                    .font(.title2)
                    .bold()
                    .scaledToFit()
                    .foregroundStyle(Color("primaryPurple"))
                Spacer()
            }
                HStack {
                    
                    TextField("Type your guess..", text: $DrawingGuess)
                        .bold()
                        .padding()
                        .background(
                            Capsule(style: .circular)
                                .fill(.white)
                        )
                        .onSubmit(makeGuess)
                    Button {
                        makeGuess()
                        
                    } label: {
                        Image(systemName: "chevron.right.circle.fill")
                            .renderingMode(.original)
                            .foregroundColor(Color("primaryPurple"))
                            .font(.system(size: 50))
                        
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding([.bottom, .horizontal], 15)
        .padding(.vertical)
        .background((matchManager.currentlyDrawing ? Color("playingColor") : Color("guessingColor")))
        .opacity(0.8)
        .brightness(-0.1)
    }
}

#Preview {
    GameView(matchManager: MatchManager())
}
