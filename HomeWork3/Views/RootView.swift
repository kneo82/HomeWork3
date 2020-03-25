//
//  ContentView.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 25.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var rootViewModel: RootViewModel
    var locator: ServiceLocator?
    
    var body: some View {
        TabView(selection: $rootViewModel.selectedTab) {
            NewsView(locator: locator)
                .font(.title)
                .tabItem({
                    Image(systemName: "text.bubble")
                    Text("News")
                })
                .tag(RootViewModel.Tab.news)
            
            JobsView(locator: locator)
                .font(.title)
                .tabItem({
                    Image(systemName: "person.crop.circle.fill")
                    Text("Jobs")
                })
                .tag(RootViewModel.Tab.jobs)
        }
    }
}
