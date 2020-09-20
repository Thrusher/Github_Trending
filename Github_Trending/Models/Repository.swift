//
//  Repository.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import Foundation

struct Repository: Identifiable {
    var id = UUID()
    let author: String
    let name: String
    let avatar: URL
    let url: URL
    let description: String
    let language: String
    let languageColor: String
    let stars: Int
    let forks: Int
    let currentPeriodStart: Int
    let buildBy: [User]
}
