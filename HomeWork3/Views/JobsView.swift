//
//  JobsView.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct JobsView: View {
    
    @ObservedObject var viewModel: JobViewModel
    
    var locator: ServiceLocator?
    
    init(locator: ServiceLocator?) {
        self.locator = locator
        self.viewModel = JobViewModel(locator: locator)
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.items) { item in
                JobRowView(item: item)
            }
            .navigationBarTitle("Swift Jobs")
            .onAppear() {
                self.viewModel.loadPage()
            }
        }
    }
}
