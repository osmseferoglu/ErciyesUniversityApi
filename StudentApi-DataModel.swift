//
//   let student = try? JSONDecoder().decode(Student.self, from: jsonData)

import Foundation

// MARK: - Student
struct Student: Codable {
    let resultCode: Int?
    let resultMessage: String?
    let data: [Datum]?

    enum CodingKeys: String, CodingKey {
        case resultCode = "ResultCode"
        case resultMessage = "ResultMessage"
        case data = "Data"
    }
}

// MARK: - Datum
struct Datum: Codable {
    let dersAdi, dersAdiEn: String?
    let vize1, vize2, vize3, datumFinal: Int?
    let butunleme: Int?
    let harfNotu: String?
    let ortalama: Int?
    let gectiKaldi: String?

    enum CodingKeys: String, CodingKey {
        case dersAdi = "DersAdi"
        case dersAdiEn = "DersAdiEn"
        case vize1 = "Vize1"
        case vize2 = "Vize2"
        case vize3 = "Vize3"
        case datumFinal = "Final"
        case butunleme = "Butunleme"
        case harfNotu = "HarfNotu"
        case ortalama = "Ortalama"
        case gectiKaldi = "GectiKaldi"
    }
}
