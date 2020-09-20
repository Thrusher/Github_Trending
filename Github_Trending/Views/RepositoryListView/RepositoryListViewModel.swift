//
//  RepositoryListViewModel.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import Foundation
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

class RepositoryListViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<RepositoryListViewModel, Never>()

    @Published
    var repositories = [RepositoryViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
    
    //MARK: - Initializers
    init() {
        fetchTrendingList()
    }
    
    //MARK: - Private Methods
    private func fetchTrendingList() {
        //TODO pdrozd 2020.09.20 - this url is here just to make it faster
        guard let url = URL(string: "https://github-trending-api.now.sh/repositories?since=daily") else {
            assertionFailure("url is wrong")
            return
        }
        
        Webservice().fetchTrendingRepositories(url: url) { repositories in
            if let repositories = repositories {
                self.repositories = repositories.map(RepositoryViewModel.init)
            }
        }
    }
}
