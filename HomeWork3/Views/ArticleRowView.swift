//
//  ArticleRowView.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct ArticleRowView: View {
    
    let item: ArticleModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title ?? "")
                .font(.largeTitle)
                .foregroundColor(.red)
            Text(item.author ?? "")
                .font(.title)
                .foregroundColor(.black)
            Text(item.url ?? "")
                .font(.caption)
                .foregroundColor(.blue)
            Text(item.description ?? "")
                .font(.caption)
                .foregroundColor(.green)
        }
    }
}
