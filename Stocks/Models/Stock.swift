//
//  Stock.swift
//  Stocks
//
//  Created by Ila Karunanithi on 2024-12-16.
//

import Foundation

struct Stock: Codable {
    let ticker: String
    let name: String
    let currentPrice: Double
}

enum CodingKeys: String, CodingKey {
    case ticker = "ticker"
    case name = "name"
    case currentPrice = "currentPrice"
}

extension Stock: Identifiable {
    var id: String { ticker }
}

extension Stock: Equatable {
    var symbol: String { ticker }
}

