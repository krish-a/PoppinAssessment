// SearchBar.swift

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 10)

            Button(action: {
                text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .padding(10)
                    .foregroundColor(.gray)
            }
        }
    }
}
