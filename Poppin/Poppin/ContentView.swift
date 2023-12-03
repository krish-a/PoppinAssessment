// ContentView.swift

import SwiftUI

@main
struct PartyExplorerApp: App {
    var body: some Scene {
        WindowGroup {
            PartyListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PartyListView()
    }
}
