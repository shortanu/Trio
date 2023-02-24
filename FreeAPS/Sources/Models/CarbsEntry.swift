import Foundation

struct CarbsEntry: JSON, Equatable, Hashable {
    let id: UUID?
    let createdAt: Date
    let carbs: Decimal
    let enteredBy: String?

    static let manual = "freeaps-x"
    static let appleHealth = "applehealth"

    static func == (lhs: CarbsEntry, rhs: CarbsEntry) -> Bool {
        lhs.createdAt == rhs.createdAt
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(createdAt)
    }
}

extension CarbsEntry {
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case createdAt = "created_at"
        case carbs
        case enteredBy
    }
}
