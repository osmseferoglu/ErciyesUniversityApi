//
//   let latestNewsAnnouncement = try? JSONDecoder().decode(EventAnnouncementElement.self, from: jsonData)

import Foundation

// MARK: - AnnouncementElement
struct EventAnnouncementElement: Codable {
    let id: Int?
    let name, title, address: String?
    let map: String?
    let duzenleyen, startDate, endDate: String?
    let imageURL: String?
    let isActive, isHome: Bool?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case title = "Title"
        case address = "Address"
        case map = "Map"
        case duzenleyen = "Duzenleyen"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case imageURL = "ImageUrl"
        case isActive = "IsActive"
        case isHome = "IsHome"
    }
}

typealias EventAnnouncementElement = [EventAnnouncementElement]
