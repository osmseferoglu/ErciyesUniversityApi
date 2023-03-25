//
//   let imageSlider = try? JSONDecoder().decode(ImageSlider.self, from: jsonData)

import Foundation

// MARK: - ImageSliderElement
struct ImageSliderElement: Codable {
    let id: Int?
    let name, title, description: String?
    let isActive: Bool?
    let imageURL: String?
    let linkURL, linkText, buttonColor: String?
    let rowNumber: Int?
    let isTarget: Bool?
    let buttonPositionX, buttonPositionY: Int?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case title = "Title"
        case description = "Description"
        case isActive = "IsActive"
        case imageURL = "ImageUrl"
        case linkURL = "LinkUrl"
        case linkText = "LinkText"
        case buttonColor = "ButtonColor"
        case rowNumber = "RowNumber"
        case isTarget = "IsTarget"
        case buttonPositionX = "ButtonPositionX"
        case buttonPositionY = "ButtonPositionY"
    }
}

typealias ImageSlider = [ImageSliderElement]
