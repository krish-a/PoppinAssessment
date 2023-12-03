// AppData.swift

import Foundation

class AppData {
    static var allParties: [Party] = [
        Party(name: "Party 1", bannerImageURL: URL(string: "https://images.pexels.com/photos/3249760/pexels-photo-3249760.jpeg?cs=srgb&dl=pexels-edoardo-tommasini-3249760.jpg&fm=jpg")!, price: 20.0, amountGoing: 200, startDate: Date(), endDate: nil),
        Party(name: "Party 2", bannerImageURL: URL(string: "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?cs=srgb&dl=pexels-wendy-wei-1190298.jpg&fm=jpg")!, price: 15.0, amountGoing: 300, startDate: Date(), endDate: nil),
        Party(name: "Party 3", bannerImageURL: URL(string: "https://t4.ftcdn.net/jpg/01/20/28/25/360_F_120282530_gMCruc8XX2mwf5YtODLV2O1TGHzu4CAb.jpg")!, price: 25.0, amountGoing: 400, startDate: Date(), endDate: Date()),
    ]

    static func addRandomParty() {
        let parties = ["https://t4.ftcdn.net/jpg/01/99/21/01/360_F_199210113_PO4I2F3CAfEhCnVnWNveK9mlgWyxY8jn.jpg", "https://t3.ftcdn.net/jpg/02/87/35/70/360_F_287357045_Ib0oYOxhotdjOEHi0vkggpZTQCsz0r19.jpg", "https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmlnaHQlMjBwYXJ0eXxlbnwwfHwwfHx8MA%3D%3D", "https://snworksceo.imgix.net/dpn-34s/d1c51649-cd92-4a82-859e-dba7687262b2.sized-1000x1000.jpeg?w=1000", "https://cdn.pixabay.com/photo/2017/07/21/23/57/concert-2527495_1280.jpg"]
        let randomNumber = Int(arc4random_uniform(5))
        let randomName = "Random Party \(allParties.count + 1)"
        let randomImageURL = URL(string: parties[randomNumber])!
        let randomPrice = Int.random(in: 10...50)
        let randomStartDate = Date()
        let randomEndDate: Date? = Bool.random() ? Date() : nil
        let randomamnt = Int(arc4random_uniform(400)) + 100

        let newParty = Party(name: randomName, bannerImageURL: randomImageURL, price: Double(randomPrice), amountGoing: randomamnt, startDate: randomStartDate, endDate: randomEndDate)

        allParties.append(newParty)
    }
}
