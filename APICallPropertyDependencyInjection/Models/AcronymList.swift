import Foundation

// MARK: - WelcomeElement
struct Acronym: Codable {
    let sf: String
    let lfs: [LF]
}

// MARK: - LF
struct LF: Codable {
    let lf: String
    let freq, since: Int
    let vars: [LF]?
}

typealias AcronymList = [Acronym]

