//
//  PlayerListViewApp.swift
//  PlayerListView
//
//  Created by Robert-Dumitru Oprea on 09/02/2023.
//

import SwiftUI
@main
struct PlayerListViewApp: App {
    @StateObject var playerList = PlayerList()
    var body: some Scene {
        WindowGroup {
            PlayerListView()
                .environmentObject(playerList)
        }
    }
}
