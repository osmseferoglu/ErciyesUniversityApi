//
//   let studentAnnouncement = try? JSONDecoder().decode(StudentAnnouncement.self, from: jsonData)

import Foundation

// MARK: - StudentAnnouncementElement
struct StudentAnnouncementElement: Codable {
    let id: Int?
    let title, description: String?
    let isActive, isHome: Bool?
    let rowNumber: Int?
    let announcementType: AnnouncementType?
    let announcementTypeID: Int?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case title = "Title"
        case description = "Description"
        case isActive = "IsActive"
        case isHome = "IsHome"
        case rowNumber = "RowNumber"
        case announcementType = "AnnouncementType"
        case announcementTypeID = "AnnouncementTypeId"
    }
}

// MARK: - AnnouncementType
struct AnnouncementType: Codable {
    let id: Int?
    let name: Name?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
    }
}

enum Name: String, Codable {
    case öğrenciDuyuruları = "Öğrenci Duyuruları"
}

typealias StudentAnnouncement = [StudentAnnouncementElement]
