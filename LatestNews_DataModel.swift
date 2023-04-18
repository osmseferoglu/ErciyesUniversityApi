//
//   let latestNewsAnnouncement = try? JSONDecoder().decode(LatestNewsAnnouncement.self, from: jsonData)

import Foundation

// MARK: - LatestNewsAnnouncementElement
struct LatestNewsAnnouncementElement: Codable {
    let id, title, description: String?
    let imageURL: String?
    let pageLink, mobileLink: String?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case title = "Title"
        case description = "Description"
        case imageURL = "ImageUrl"
        case pageLink = "PageLink"
        case mobileLink = "MobileLink"
    }
}

typealias LatestNewsAnnouncement = [LatestNewsAnnouncementElement]
