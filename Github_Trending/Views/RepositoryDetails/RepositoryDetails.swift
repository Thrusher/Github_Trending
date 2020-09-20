//
//  RepositoryDefailt.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import SwiftUI

class RepositoryDetailsViewModel {
        
    @Published
    var repository: Repository
    
    init(repository: Repository) {
        self.repository = repository
    }
}

struct RepositoryDetailsView: View {
    
    var model: RepositoryDetailsViewModel
    
    var body: some View {
        ScrollView {
            URLImage(withURL: model.repository.avatar)
            Text(model.repository.author)
                .font(.title)
                .bold()
            Spacer(minLength: 20)
            HStack {
                Spacer(minLength: 50)
            Text(model.repository.description)
                .foregroundColor(.gray)
                Spacer(minLength: 50)
            }
            Spacer(minLength: 50)
            HStack {
                Spacer(minLength: 50)
                HStack(alignment: .center, spacing: 2) {
                    Spacer(minLength: 10)
                    Text(String("\(model.repository.stars) Stars"))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    Spacer(minLength: 10)
                    Divider()
                        .frame(width: 1)
                        .background(Color.gray)
                    Spacer(minLength: 10)
                    Text(String("\(model.repository.forks) Forks"))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    Spacer(minLength: 10)
                }
                
                .padding(0)
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(Color.gray, lineWidth: 1)
                )
                Spacer(minLength: 50)
            }
            .frame(height: 40)

        }.navigationTitle(model.repository.name)
    }
}
