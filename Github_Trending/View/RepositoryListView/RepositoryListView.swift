//
//  ProjectListView.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import SwiftUI

enum RepositoryListViewState {
    case downloading,
         downloaded,
         inSearch,
         downloadError
}

class RepositoryListViewModel {
    var state: RepositoryListViewState = .downloaded
}

struct RepositoryListView: View {
        
    var repositories: [Repository] = []
    
    var body: some View {
        NavigationView {
            List(repositories) { repo in
                NavigationLink(
                    destination: RepositoryDetailsView(repository: repo)) {
                        RepositoryListCell(repository: repo)
                    }
            }.navigationBarTitle("Github Trends")
        }
    }
}

#if DEBUG
struct RepositoryListView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryListView(repositories: mockRepositories)
    }
}
#endif
