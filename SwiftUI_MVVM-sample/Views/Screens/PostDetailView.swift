//
//  PostDetailView.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/11/25.
//

import SwiftUI

struct PostDetailView: View {
    
    let post: Post
    @StateObject private var viewModel = PostDetailViewModel()
    
    var body: some View {
        ScrollView {
            
            // Post Content
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 12) {
                    Text(post.title)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(post.body)
                        .font(.body)
                        .lineSpacing(4)
                }
                
                Divider()
                
                // Author Section
                VStack(alignment: .leading, spacing: 8) {
                    Text("Author")
                        .font(.headline)
                    
                    if viewModel.isLoadingUser {
                        HStack {
                            ProgressView()
                                .scaleEffect(0.8)
                            Text("Loading author...")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    } else if let user = viewModel.user {
                        AuthorView(user: user)
                    } else if let errorMessage = viewModel.errorMessage {
                        Text("Failed to load author: \(errorMessage)")
                            .font(.caption)
                            .foregroundStyle(.red)
                    }
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Post Details")
        .navigationBarTitleDisplayMode(.inline)
        .task {
            await viewModel.loadUser(id: post.userId)
        }
    }
}

#Preview {
    NavigationView {
        PostDetailView(post: Post(
            id: 1,
            userId: 1,
            title: "Sample",
            body: "This is a sample post."
        ))
    }
}
