//
//  ArticleModel.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation

struct ArticleModel {
    public var author: String?
    public var title: String?
    public var description: String?
    public var url: String?
}

extension ArticleModel: Identifiable {
    public var id: String {
        self.title ?? UUID().uuidString
    }
}
