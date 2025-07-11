//
//  PostDetailViewModel.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import Foundation

@MainActor
final class PostDetailViewModel: ObservableObject {
    @Published var user: User?
    @Published var isLoadingUser = false
    @Published var errorMessage: String?
    
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
    }
    
    func loadUser(id: Int) async {
        isLoadingUser = true
        errorMessage = nil
        
        do {
            user = try await networkService.fetchUser(id: id)
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoadingUser = false
    }
    
}
