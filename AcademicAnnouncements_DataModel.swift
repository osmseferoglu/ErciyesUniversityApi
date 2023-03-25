//
//   let academicAnnouncements = try? JSONDecoder().decode(AcademicAnnouncements.self, from: jsonData)

import Foundation

// MARK: - AcademicAnnouncement
struct AcademicAnnouncement: Codable {
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

typealias AcademicAnnouncements = [AcademicAnnouncement]
