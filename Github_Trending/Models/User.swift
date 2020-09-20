//
//  User.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import Foundation

struct User: Codable {
    let username: String
    let href: URL
    let avatar: URL
}
