// PartyDetail.swift

import SwiftUI

struct PartyDetail: View {
    let party: Party

    var body: some View {
        // Customize party details view here
        Text("Party Detail View for \(party.name)")
            .navigationTitle(party.name)
    }
}
