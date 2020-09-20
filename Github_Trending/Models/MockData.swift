//
//  mockData.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import Foundation

#if DEBUG
let mockRepository = Repository(author: "cli",
                                name: "cli",
                                avatar: URL(string: "https://github.com/cli.png")!,
                                url: URL(string: "https://github.com/cli/cli")!,
                                description: "GitHub’s official command line tool",
                                language: "Go",
                                languageColor: "#00ADD8",
                                stars: 14746,
                                forks: 981,
                                currentPeriodStart: 778,
                                buildBy: [
                                 User(userName: "mislav",
                                      href: URL(string: "https://github.com/mislav")!,
                                      avatar: URL(string: "https://avatars2.githubusercontent.com/u/887")!),
                                 User(userName: "vilmibm",
                                      href: URL(string: "https://github.com/vilmibm")!,
                                      avatar: URL(string: "https://avatars3.githubusercontent.com/u/98482")!),
                                 User(userName: "probablycorey",
                                      href: URL(string: "https://github.com/probablycorey")!,
                                      avatar: URL(string: "https://avatars2.githubusercontent.com/u/596")!)
                                ]
                     )

let mockRepositories: [Repository] = [
    Repository(author: "cli",
               name: "cli",
               avatar: URL(string: "https://github.com/cli.png")!,
               url: URL(string: "https://github.com/cli/cli")!,
               description: "GitHub’s official command line tool",
               language: "Go",
               languageColor: "#00ADD8",
               stars: 14746,
               forks: 981,
               currentPeriodStart: 778,
               buildBy: [
                User(userName: "mislav",
                     href: URL(string: "https://github.com/mislav")!,
                     avatar: URL(string: "https://avatars2.githubusercontent.com/u/887")!),
                User(userName: "vilmibm",
                     href: URL(string: "https://github.com/vilmibm")!,
                     avatar: URL(string: "https://avatars3.githubusercontent.com/u/98482")!),
                User(userName: "probablycorey",
                     href: URL(string: "https://github.com/probablycorey")!,
                     avatar: URL(string: "https://avatars2.githubusercontent.com/u/596")!)
               ]
    ),
    Repository(author: "schollz",
               name: "croc",
               avatar: URL(string: "https://github.com/schollz.png")!,
               url: URL(string: "https://github.com/schollz/croc")!,
               description: "Easily and securely send things from one computer to another 🐊 📦",
               language: "Go",
               languageColor: "#00ADD8",
               stars: 7336,
               forks: 274,
               currentPeriodStart: 298,
               buildBy: [
                User(userName: "schollz",
                     href: URL(string: "https://github.com/schollz")!,
                     avatar: URL(string: "https://avatars3.githubusercontent.com/u/6550035")!),
                User(userName: "TheQueasle",
                     href: URL(string: "https://github.com/TheQueasle")!,
                     avatar: URL(string: "https://avatars1.githubusercontent.com/u/13701545")!),
                User(userName: "afotescu",
                     href: URL(string: "https://github.com/afotescu")!,
                     avatar: URL(string: "https://avatars1.githubusercontent.com/u/16053082")!),
                User(userName: "maximbaz",
                     href: URL(string: "https://github.com/maximbaz")!,
                     avatar: URL(string: "https://avatars0.githubusercontent.com/u/1177900")!),
                User(userName: "smileboywtu",
                     href: URL(string: "https://github.com/smileboywtu")!,
                     avatar: URL(string: "https://avatars0.githubusercontent.com/u/12299551")!)
               ]
    ),
]
#endif
