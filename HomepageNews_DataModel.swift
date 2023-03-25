//
//   let newsHaberler = try? JSONDecoder().decode(NewsHaberler.self, from: jsonData)

import Foundation

// MARK: - NewsHaberlerElement
struct NewsHaberlerElement: Codable {
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

typealias NewsHaberler = [NewsHaberlerElement]
