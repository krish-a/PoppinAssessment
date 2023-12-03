// Party.swift

import Foundation
import SwiftUI

struct Party {
    let name: String
    let bannerImageURL: URL
    let price: Double
    let amountGoing: Int
    let startDate: Date
    let endDate: Date?

    // Additional properties can be added as needed

    // Example init method
    init(name: String, bannerImageURL: URL, price: Double, amountGoing: Int, startDate: Date, endDate: Date?) {
        self.name = name
        self.bannerImageURL = bannerImageURL
        self.price = price
        self.amountGoing = amountGoing
        self.startDate = startDate
        self.endDate = endDate
    }
}
