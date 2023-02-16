//
//  TestPopOver.swift
//  PlayerListView
//
//  Created by Robert-Dumitru Oprea on 16/02/2023.
//

import SwiftUI

struct TestPopOver: View {
    @State private var showingPopover = false

        var body: some View {
            Button("Show Menu") {
                showingPopover = true
            }
            .popover(isPresented: $showingPopover) {
                Text("Your content here")
                    .font(.headline)
                    .padding()
            }
        }
}

struct TestPopOver_Previews: PreviewProvider {
    static var previews: some View {
        TestPopOver()
    }
}
