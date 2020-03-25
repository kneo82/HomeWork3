//
//  RootViewModel.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation

class RootViewModel: ObservableObject {
    @Published var selectedTab: Tab = .news
}

extension RootViewModel {
    enum Tab: Hashable {
        case news
        case jobs
    }
}
