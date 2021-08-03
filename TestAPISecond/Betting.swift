//
//  Betting.swift
//  TestAPISecond
//
//  Created by Oleh Dovhan on 03.08.2021.
//

import Foundation

// MARK: - Betting
struct Betting: Codable {
    let success: Bool
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let id: String
    let sportKey: SportKey
    let sportNice: SportNice
    let teams: [String]
    let commenceTime: Int
    let homeTeam: String
    let sites: [Site]
    let sitesCount: Int

    enum CodingKeys: String, CodingKey {
        case id
        case sportKey = "sport_key"
        case sportNice = "sport_nice"
        case teams
        case commenceTime = "commence_time"
        case homeTeam = "home_team"
        case sites
        case sitesCount = "sites_count"
    }
}

// MARK: - Site
struct Site: Codable {
    let siteKey, siteNice: String
    let lastUpdate: Int
    let odds: [String: [Double]]

    enum CodingKeys: String, CodingKey {
        case siteKey = "site_key"
        case siteNice = "site_nice"
        case lastUpdate = "last_update"
        case odds
    }
}

enum SportKey: String, Codable {
    case baseballMlb = "baseball_mlb"
    case soccerChinaSuperleague = "soccer_china_superleague"
    case soccerSwedenSuperettan = "soccer_sweden_superettan"
}

enum SportNice: String, Codable {
    case mlb = "MLB"
    case superLeagueChina = "Super League - China"
    case superettanSweden = "Superettan - Sweden"
}
