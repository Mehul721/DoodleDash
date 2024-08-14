//
//  DrawingView.swift
//  DoodleDash
//
//  Created by Mehul Jain on 14/08/24.
//

import SwiftUI
import PencilKit

struct DrawingView: UIViewRepresentable {
    class Coordinator:NSObject,PKCanvasViewDelegate{
        var matchManager:MatchManager
         
        init(matchManager:MatchManager) {
            self.matchManager = matchManager
        }
        func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
            //yoooo
        }
        
        
    }
    var canvasView = PKCanvasView()
    @ObservedObject var matchManager:MatchManager
    @Binding var eraserEnabled:Bool
    
    func makeUIView(context:Context)-> PKCanvasView{
        canvasView.drawingPolicy = .anyInput
        canvasView.tool=PKInkingTool(.pen,color:.black, width: 5)
        canvasView.delegate=context.coordinator
        canvasView.isUserInteractionEnabled=matchManager.currentlyDrawing
        return canvasView
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(matchManager: self.matchManager)
    }
    
    func updateUIView(_ uiView: PKCanvasView, context:Context){
        
        canvasView.tool = eraserEnabled ? PKEraserTool(.vector): PKInkingTool(.pen,color:.black,width:5)
    }}
    

