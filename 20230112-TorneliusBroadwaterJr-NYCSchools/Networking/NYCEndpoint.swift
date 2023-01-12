//
//  NYCEndpoint.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import Foundation

enum NYCEndpoint: Endpoint {
    
    case fetchSchools
    case fetchSATScores
    
    var scheme: String {
        switch self {
        case .fetchSchools:
            return "https"
        case .fetchSATScores:
            return "https"
        }
    }
    
    var host: String {
        switch self {
        case .fetchSchools:
            return "data.cityofnewyork.us"
        case .fetchSATScores:
            return "data.cityofnewyork.us"
        }
    }
    
    var path: String {
        switch self {
        case .fetchSchools:
            return "/resource/s3k6-pzi2.json"
        case .fetchSATScores:
            return "/resource/f9bf-2cp4.json"
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        case .fetchSchools:
            return [URLQueryItem]()
        case .fetchSATScores:
            return [URLQueryItem]()
        }
    }
    
    var method: String {
        switch self {
        case .fetchSchools:
            return "GET"
        case .fetchSATScores:
            return "GET"
        }
    }
    
}
