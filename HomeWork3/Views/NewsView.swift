//
//  NewsView.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct NewsView: View {
    
    @ObservedObject var viewModel: NewsViewModel
    
    var locator: ServiceLocator?
    
    init(locator: ServiceLocator?) {
        self.locator = locator
        self.viewModel = NewsViewModel(locator: locator)
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.items) { item in
                ArticleRowView(item: item)
            }
            .navigationBarTitle("Articles")
            .onAppear() {
                self.viewModel.loadPage()
            }
        }
    }
}
