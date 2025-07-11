//
//  PostsViewModel.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import Foundation

@MainActor
final class PostsViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
    }
    
    func loadPosts() async {
        isLoading = true
        errorMessage = nil
        
        do {
            posts = try await networkService.fetchPosts()
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
    
    func refreshPosts() async {
        await loadPosts()
    }
    
    
}
