//
//  NetworkError.swift
//  Stocks
//
//  Created by Ila Karunanithi on 2024-12-16.
//


enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case decodingError
    case serverError(String)
}
