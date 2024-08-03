//
//  User.swift
//  TakeHomeProjectUIKit
//
//  Created by Đoàn Văn Khoan on 3/8/24.
//

import Foundation


struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createAt: String
}
