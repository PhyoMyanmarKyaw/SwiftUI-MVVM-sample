//
//  ContentView.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = PostsViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading && viewModel.posts.isEmpty {
                    ProgressView("Loading posts...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if let errorMessage = viewModel.errorMessage, viewModel.posts.isEmpty {
                    ErrorView(message: errorMessage) {
                        Task {
                            await viewModel.refreshPosts()
                        }
                    }
                } else {
                    PostsListView(posts: viewModel.posts)
                }
            }
            .navigationTitle("Posts")
            .refreshable {
                await viewModel.refreshPosts()
            }
            .task {
                await viewModel.loadPosts()
            }
        }
    }
}

#Preview {
    ContentView()
}
