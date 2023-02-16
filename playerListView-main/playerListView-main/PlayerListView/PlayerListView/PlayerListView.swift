//
//  ContentView.swift
//  PlayerListView
//
//  Created by Robert-Dumitru Oprea on 09/02/2023.
//

import SwiftUI

struct PlayerListView: View {
    
    var body: some View {
        var players:[Player] = playersData
        HStack {
            NavigationView {
                List(players) { listedPlayer in
                    NavigationLink(destination: PlayerDataView(player: listedPlayer)) {
                        Text("\(listedPlayer.name)")
                    }
                }
            }
            .navigationTitle("Top EPL Players")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}

