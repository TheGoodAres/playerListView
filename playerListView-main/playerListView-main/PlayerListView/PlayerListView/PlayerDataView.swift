//
//  PlayerDataView.swift
//  PlayerListView
//
//  Created by Robert-Dumitru Oprea on 09/02/2023.
//

import SwiftUI

struct PlayerDataView: View {
    var player:Player
    var body: some View {
        VStack{
            Spacer()
            HStack{
                if(player.imageName == "undefined") {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 150, height: 150.0)
                        .cornerRadius(400)
                } else {
                    Image("\(player.imageName)")
                        .resizable()
                        .frame(width: 150, height: 150.0)
                        .cornerRadius(400)
                }
                Text("\(player.name)")
                Text("\(player.bio)")
                
            }
            Spacer()
            HStack{
                
                Image("epl")
                   .resizable()
                   .frame(width: 400, height: 300.0)
                   
            }
            
            
        }
        
    }
}

struct PlayerDataView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDataView(player: Player(name: "Peter Scmichael", imageName: "peter", bio: "Career:\n" +
                                      "• Main Club - Man Utd  \n" +
                                      "• Position - Goalkeeper \n " +
                                      "• Denmark Caps - 129\n"))
    }
}
