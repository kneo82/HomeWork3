//
//  JobRowView.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct JobRowView: View {
    
    let item: JobModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title ?? "")
                .font(.largeTitle)
                .foregroundColor(.red)
            Text(item.company ?? "")
                .font(.title)
                .foregroundColor(.black)
            Text(item.companyUrl ?? "")
                .font(.caption)
                .foregroundColor(.blue)
            Text(item.description ?? "")
                .font(.caption)
                .foregroundColor(.green)
        }
    }
}
