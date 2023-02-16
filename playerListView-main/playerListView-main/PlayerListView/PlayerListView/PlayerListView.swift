//
//  ContentView.swift
//  PlayerListView
//
//  Created by Robert-Dumitru Oprea on 09/02/2023.
//

import SwiftUI

struct PlayerListView: View {
    @State var showPopOver = false
    @EnvironmentObject var players: PlayerList
    var body: some View {
        HStack {
            NavigationStack {
                NavigationView {
                    //                    List(players.playerList) { listedPlayer in
                    //                        NavigationLink(destination: PlayerDataView(player: listedPlayer)) {
                    //                            HStack {
                    //                                if(listedPlayer.imageName == "undefined") {
                    //                                    Image(systemName: "person")
                    //                                        .resizable()
                    //                                        .frame(width: 150, height: 150.0)
                    //                                        .cornerRadius(400)
                    //                                } else {
                    //                                    Image("\(listedPlayer.imageName)")
                    //                                        .resizable()
                    //                                        .frame(width: 150, height: 150.0)
                    //                                        .cornerRadius(400)
                    //                                }
                    //                                Text("\(listedPlayer.name)")
                    //
                    //                            }
                    //                        }
                    //                    }

                    List {
                        ForEach(players.playerList, id: \.id) {
                            player in
                            NavigationLink(destination: PlayerDataView(player: player)) {
                                HStack {
                                    if(player.imageName == "undefined") {
                                        Image(systemName: "person")
                                            .resizable()
                                            .frame(width: 150, height: 150.0)
                                            .cornerRadius(400)
                                    }
                                    else {
                                        Image("\(player.imageName)")
                                            .resizable()
                                            .frame(width: 150, height: 150.0)
                                            .cornerRadius(400)
                                    }
                                    Text("\(player.name)")
                                }
                            }
                        }
                            .onDelete(perform: removeItems)

                    }.navigationTitle("Top EPL Players")
                        .toolbar {
                        Button("Add") {
                            showPopOver.toggle()
                        } .popover(isPresented: $showPopOver) {
                            addPlayer(players: players)
                        }
                            
                        Button("Print all players") {
                            print(players.playerList.count)
                            for player in players.playerList {
                                print(player.name)
                            }
                            print()
                        }
                        //                    NavigationLink(destination: addPlayer(players: players)) {
                        //                        Text("Add")
                        //                    }

                    }
                }

            }
        }
    }
    func removeItems(at offsets: IndexSet) {
        players.playerList.remove(atOffsets: offsets)
    }
}
//table list refreshing
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}

