// PartyCardView.swift

import SwiftUI

struct PartyCardView: View {
    @State private var isShowingDetail = false
    let party: Party

    var body: some View {
        VStack {
            // Display party image
            RemoteImage(url: party.bannerImageURL)
                .frame(height: 150)
                .cornerRadius(10)

            // Display party details
            VStack(alignment: .leading, spacing: 8) {
                Text(party.name)
                    .font(.headline)
                    .lineLimit(2)

                HStack {
                    Text("Price: $\(party.price, specifier: "%.2f")")
                        .font(.subheadline)
                    Spacer()
                    Text("Going: \(party.amountGoing)")
                        .font(.subheadline)
                }

                Text("Start Date: \(party.startDate, formatter: DateFormatter.shortDateFormatter)")
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)

        }
        .onTapGesture {
            isShowingDetail = true
        }
        .sheet(isPresented: $isShowingDetail) {
            PartyDetailView(party: party)
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 10)
    }
}
