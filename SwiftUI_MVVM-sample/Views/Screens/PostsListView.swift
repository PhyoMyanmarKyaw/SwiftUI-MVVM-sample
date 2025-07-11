//
//  PostsListView.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import SwiftUI

struct PostsListView: View {
    
    let posts: [Post]
    
    var body: some View {
        List(posts) { post in
            NavigationLink(destination: PostDetailView(post: post)) {
                PostRowView(post: post)
            }
        }
        .listStyle(PlainListStyle())
    }
}

#Preview {
    PostsListView(posts: [Post(
        id: 1,
        userId: 1,
        title: "Sample",
        body: "This is a sample post."
    )])
}
