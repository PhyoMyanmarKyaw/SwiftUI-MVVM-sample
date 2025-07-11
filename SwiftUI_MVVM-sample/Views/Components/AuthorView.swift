//
//  AuthorView.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/11/25.

import SwiftUI

struct AuthorView: View {
    
    let user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(user.name)
                .font(.subheadline)
                .fontWeight(.medium)
            
            Text(user.email)
                .font(.caption)
                .foregroundStyle(.blue)
            
            if let website = user.website {
                Text(website)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

#Preview {
    AuthorView(user: User(id: 1, name: "Name", email: "test@gmail.com", website: "www.google.com"))
}
