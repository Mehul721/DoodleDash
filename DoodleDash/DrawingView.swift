//
//  DrawingView.swift
//  DoodleDash
//
//  Created by Mehul Jain on 14/08/24.
//

import SwiftUI
import PencilKit

struct DrawingView: UIViewRepresentable {
    class Coordinator: NSObject, PKCanvasViewDelegate {
        var matchManager: MatchManager

        init(matchManager: MatchManager) {
            self.matchManager = matchManager
        }

        func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
            // Handle drawing changes here if needed
        }
    }

    var canvasView = PKCanvasView()
    @ObservedObject var matchManager: MatchManager
    @Binding var eraserEnabled: Bool
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.delegate = context.coordinator
        canvasView.isUserInteractionEnabled = matchManager.currentlyDrawing
        
        // Set the initial tool to pen
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        
        return canvasView
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(matchManager: self.matchManager)
    }

    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        if eraserEnabled {
            // Eraser is active, set the tool to eraser
            uiView.tool = PKEraserTool(.vector)
        } else {
            // Set tool to pen when eraser is deactivated
            uiView.tool = PKInkingTool(.pen, color: .black, width: 5)
        }
    }
}

    

