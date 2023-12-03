// PartyDetailView.swift

import SwiftUI

struct PartyDetailView: View {
    let party: Party

    var body: some View {
        VStack {
            // Display detailed party information
            Text(party.name)
                .font(.title)

            // Display party image
            RemoteImage(url: party.bannerImageURL)
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)

            // Display other party details
            Text("Price: $\(party.price)")
            Text("Amount Going: \(party.amountGoing)")
            Text("Start Date: \(party.startDate, formatter: DateFormatter.longDateFormatter)")

            if let endDate = party.endDate {
                Text("End Date: \(endDate, formatter: DateFormatter.longDateFormatter)")
            }
        }
        .padding()
        .navigationTitle("Party Details")
    }
}
