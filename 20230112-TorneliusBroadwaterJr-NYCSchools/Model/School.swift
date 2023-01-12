//
//  School.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import Foundation

struct School: Codable, Identifiable {
    var id = UUID()
    var dbn: String
    var schoolName: String
    var overview: String
    var phoneNumber: String
    var website: String
    var studentTotal: String
    var streetAddress: String
    var city: String
    var zip: String
    var state: String
    
    enum CodingKeys: String, CodingKey {
        case dbn, website, city, zip
        case schoolName = "school_name"
        case overview = "overview_paragraph"
        case phoneNumber = "phone_number"
        case studentTotal = "total_students"
        case streetAddress = "primary_address_line_1"
        case state = "state_code"
        
    }
}
