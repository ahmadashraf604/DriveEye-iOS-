import Foundation
import UIKit
struct CoachRespose: Codable {
    let status: Bool
    let response: [Coach]
}



// MARK: - Response
struct Coach: Codable {
    let coachingID: Int
    let title, responseDescription: String
    let image: String?
    
    enum CodingKeys: String, CodingKey {
        case coachingID = "coachingId"
        case title
        case responseDescription = "description"
        case image
    }
}
