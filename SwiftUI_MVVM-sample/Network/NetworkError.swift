//
//  NetworkError.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import Foundation

enum NetworkError: LocalizedError {
    case invalidResponse
    case decodingError
    case networkUnavailable
    
    var errorDescription: String? {
        switch self {
        case .invalidResponse:
            return "Invalid server response"
        case .decodingError:
            return "Failed to decode data"
        case .networkUnavailable:
            return "Network unavailable"
        }
    }
}
