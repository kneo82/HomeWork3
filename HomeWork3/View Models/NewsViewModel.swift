//
//  NewsViewModel.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation


final class NewsViewModel: ObservableObject {
    
    var locator: ServiceLocator?
    
    @Published private(set) var items: [ArticleModel] = [ArticleModel]()

    
    init(locator: ServiceLocator?) {
        self.locator = locator
    }
    
    func loadPage() {
        guard locator != nil else {
            return
        }
        
        if let service = locator?.getServiceOf(ArticlesService.self)  {
            service.getArticles { article in
                self.items.append(contentsOf: article)
            }
        }
    }
}
