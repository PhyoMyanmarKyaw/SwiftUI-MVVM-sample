//
//  PostRowView.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import SwiftUI

struct PostRowView: View {
    
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(post.title)
                .font(.headline)
                .lineLimit(2)
            
            Text(post.body)
                .font(.body)
                .foregroundStyle(.secondary)
                .lineLimit(3)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    PostRowView(post: Post(id: 1, userId: 1, title: "TItle", body: "Body Text"))
}
