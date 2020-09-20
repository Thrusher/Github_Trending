//
//  RepositoryListCell.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import SwiftUI

struct RepositoryListCell: View {
    
    var repository: Repository
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(repository.name).font(.body)
            Text(String("\(repository.stars)")).font(.subheadline)
            Text(repository.description).font(.subheadline).foregroundColor(Color.gray)
            Spacer(minLength: 14)
        }
    }
}

struct RepositoryListCell_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryListCell(repository: mockRepository)
    }
}
