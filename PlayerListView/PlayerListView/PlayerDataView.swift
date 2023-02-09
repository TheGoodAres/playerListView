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
        Text("\(player.name)")
    }
}

struct PlayerDataView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDataView(player: Player(name: "Rob", imageName: "1", bio: "Hello"))
    }
}
