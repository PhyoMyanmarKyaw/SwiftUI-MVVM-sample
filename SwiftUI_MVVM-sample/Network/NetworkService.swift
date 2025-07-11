//
//  NetworkService.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchPosts() async throws -> [Post]
    func fetchUser(id: Int) async throws -> User
}

final class NetworkService:NetworkServiceProtocol {
    private let session: URLSession
    private let baseURL = "https://jsonplaceholder.typicode.com"
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func fetchPosts() async throws -> [Post] {
        let url = URL(string: "\(baseURL)/posts")!
        let (data, response) = try await session.data(from: url)
        
        guard let httpResonse = response as? HTTPURLResponse, httpResonse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            return try JSONDecoder().decode([Post].self, from: data)
        } catch {
            throw NetworkError.decodingError
        }
    }
    
    func fetchUser(id: Int) async throws -> User {
        let url = URL(string: "\(baseURL)/users/\(id)")!
        let (data, response) = try await session.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            return try JSONDecoder().decode(User.self, from: data)
        } catch {
            throw NetworkError.decodingError
        }
    }
}
