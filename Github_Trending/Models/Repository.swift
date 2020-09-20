//
//  Repository.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import Foundation

struct Repository: Codable {
    let author: String
    let name: String
    let avatar: URL
    let url: URL
    let description: String
    let language: String
    let languageColor: String
    let stars: Int
    let forks: Int
    let currentPeriodStars: Int
    let builtBy: [User]
}

struct User: Codable {
    let username: String
    let href: URL
    let avatar: URL
}
