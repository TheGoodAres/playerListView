//
//  addPlayer.swift
//  PlayerListView
//
//  Created by Robert-Dumitru Oprea on 09/02/2023.
//

import SwiftUI

struct addPlayer: View {
    @State var players: PlayerList
    @State var playerName: String = ""
    @State var bio: String = ""
    @State var imageName: String = "undefined"
    var body: some View {
        HStack{
            
            VStack(alignment: .center) {
                Spacer()
                HStack {
                    Text("Player Name:")
                    TextField("Player name", text: $playerName )
                }
                
                HStack {
                    Text("Bio:")
                    TextField("Bio", text: $bio)
                }
                
                HStack{
                    Text("Image name: ")
                    TextField("Image name", text: $imageName)
                }
                
                Button("Add"){
                    guard (bio != "" && playerName != "") else {
                        return
                    }
                    players.addPlayer(player: Player(name: playerName, imageName: self.imageName, bio: self.bio))
                    print("added player")
                    for player in players.playerList {
                        print(player.name)
                    }
                }
                Spacer()
            }
            
            .padding()
        }
        
    }
}


