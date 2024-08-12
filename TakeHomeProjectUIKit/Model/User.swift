//
//  User.swift
//  TakeHomeProjectUIKit
//
//  Created by Đoàn Văn Khoan on 3/8/24.
//

import Foundation


struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: String
}
