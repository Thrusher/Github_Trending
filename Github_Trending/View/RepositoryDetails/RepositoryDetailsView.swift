//
//  RepositoryDefailt.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import SwiftUI

struct RepositoryDetailsView: View {
    
    var repository: Repository
    
    var body: some View {
        NavigationView {
            VStack {
                Text(repository.name)
            }.navigationBarTitle(repository.name)
        }
    }
}
