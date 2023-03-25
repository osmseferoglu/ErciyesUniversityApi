//
//   let yemekhane = try? JSONDecoder().decode(Yemekhane.self, from: jsonData)

import Foundation

// MARK: - YemekhaneElement
struct YemekhaneElement: Codable {
    let id: Int
    let date: String
    let foodMenuCategory, foodMenuTime: Food
    let foodLists: [FoodList]

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case date = "Date"
        case foodMenuCategory = "FoodMenuCategory"
        case foodMenuTime = "FoodMenuTime"
        case foodLists = "FoodLists"
    }
}

// MARK: - FoodList
struct FoodList: Codable {
    let id: Int
    let food: String
    let calory: Int
    let foodListType: Food

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case food = "Food"
        case calory = "Calory"
        case foodListType = "FoodListType"
    }
}

// MARK: - Food
struct Food: Codable {
    let id: Int
    let name: String

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
    }
}

typealias Yemekhane = [YemekhaneElement]
