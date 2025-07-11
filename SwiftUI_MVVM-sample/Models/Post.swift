//
//  Post.swift
//  SwiftUI_MVVM-sample
//
//  Created by Phyo Myanmar Kyaw on 7/8/25.
//

import Foundation

struct Post: Identifiable, Codable {
    let id: Int
    let userId: Int
    let title: String
    let body: String
}


