//
//  ProjectListView.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import SwiftUI
import Combine

class RepositoryViewModel: Identifiable {
    let id = UUID()
    
    var repository: Repository
    
    init(repository: Repository) {
        self.repository = repository
    }
    
    var name: String {
        return self.repository.name
    }
    
    var starsCount: String {
        return String("\(self.repository.stars)")
    }
    
    var description: String {
        return self.repository.description
    }
}

struct RepositoryListView: View {
    
    @State
    private var searchTerm: String = ""
    
    @ObservedObject
    var model: RepositoryListViewModel
    
    var body: some View {
        NavigationView {
            List {
                SearchBar(text: $searchTerm)
                
                ForEach(
                    model.repositories
                        .filter { repo in
                            self.searchTerm.isEmpty ? true : repo.name.localizedCaseInsensitiveContains(self.searchTerm)
                        }
                ) { repo in
                    NavigationLink(
                        destination: RepositoryDetailsView(repository: repo.repository)) {
                        RepositoryListCell(repository: repo.repository)
                    }
                }
            }
            .navigationBarTitle("Github Trends")
        }
    }
}
