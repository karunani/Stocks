//
//  NetworkingService.swift
//  Stocks
//
//  Created by Ila Karunanithi on 2024-12-16.
//

import Foundation

protocol StockNetworkService {
    func fetchStocks() async throws -> [Stock]
}
