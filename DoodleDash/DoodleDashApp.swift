//
//  DoodleDashApp.swift
//  DoodleDash
//
//  Created by Mehul Jain on 11/08/24.
//

import SwiftUI

@main
struct DoodleDashApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView(matchManager: MatchManager())
        }
    }
}
