// PartyListView.swift

import SwiftUI

struct PartyListView: View {
    @State private var searchText = ""
    @State private var parties: [Party] = AppData.allParties
    @State private var newPartyAdded = false

    var filteredParties: [Party] {
        if searchText.isEmpty {
            return parties
        } else {
            return parties.filter {
                $0.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                    .padding(.top, 16)

                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(filteredParties, id: \.name) { party in
                            PartyCardView(party: party)
                        }
                    }
                    .padding()
                }

                Button(action: {
                    AppData.addRandomParty()
                    parties = AppData.allParties
                    newPartyAdded = true
                }) {
                    Text("Add Party")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                .padding()
                .padding(.bottom, 16)
            }
            .background(Color("BackgroundColor").ignoresSafeArea())
            .navigationTitle("Party Explorer")
            .onChange(of: newPartyAdded) { _ in
                // Reset the flag after the view has been updated
                newPartyAdded = false
            }
        }
    }
}
