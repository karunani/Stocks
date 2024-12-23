//
//  DefaultStockNetworkService.swift
//  Stocks
//
//  Created by Ila Karunanithi on 2024-12-16.
//

import Foundation

actor DefaultStockNetworkService: StockNetworkService {
    
    private let baseURL = ""
    
    func fetchStocks() async throws -> [Stock] {
        guard let url = URL(string: baseURL) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.serverError("")
        }
        
        do {
            return try JSONDecoder().decode([Stock].self, from: data)
        } catch {
            throw NetworkError.decodingError
        }
    }
}
