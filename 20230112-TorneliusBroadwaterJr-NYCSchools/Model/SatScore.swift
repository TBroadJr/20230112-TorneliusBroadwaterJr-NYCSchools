//
//  SatScore.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import Foundation

struct SatScore: Codable, Identifiable {
    var id = UUID()
    var dbn: String
    var numberOfSATTestTakers: String
    var readingScoreAverage: String
    var mathScoreAverage: String
    var writingScoreAverage: String
    
    enum CodingKeys: String, CodingKey {
        case dbn
        case numberOfSATTestTakers = "num_of_sat_test_takers"
        case readingScoreAverage = "sat_critical_reading_avg_score"
        case mathScoreAverage = "sat_math_avg_score"
        case writingScoreAverage = "sat_writing_avg_score"
    }
}
