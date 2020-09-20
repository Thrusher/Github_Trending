//
//  ProjectListView.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import SwiftUI
import Combine

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
                        destination: RepositoryDetailsView(model: RepositoryDetailsViewModel(repository: repo.repository))) {
                        RepositoryListCell(repository: repo.repository)
                    }
                }
            }
            .navigationBarTitle("Github Trends")
        }
    }
}
