//
//  ContentView.swift
//  PlayerListView
//
//  Created by Robert-Dumitru Oprea on 09/02/2023.
//

import SwiftUI

struct PlayerListView: View {
    @State var showPopOver: Bool = false
    @ObservedObject var players = PlayerList()
    var body: some View {
        HStack {
            NavigationStack{
                NavigationView {
                    List(players.playerList) { listedPlayer in
                        NavigationLink(destination: PlayerDataView(player: listedPlayer)) {
                            HStack{
                                Image("\(listedPlayer.imageName)")
                                    .resizable()
                                    .frame(width: 150, height: 150.0)
                                    .cornerRadius(400)
                                Text("\(listedPlayer.name)")
                                
                            }
                        }
                    }
                }.navigationTitle("Top EPL Players")
                    .toolbar {
                        Button("Add") {
                            showPopOver = true
                        }
                        .popover(isPresented: $showPopOver) {
                            addPlayer()
                        }
                    }
            }
            
        }
    }
}

//table list refreshing
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}

