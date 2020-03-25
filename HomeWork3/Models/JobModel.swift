//
//  JobModel.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 26.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation

struct JobModel {
    var title: String?
    var description: String?
    var company: String?
    var companyUrl: String?
}

extension JobModel: Identifiable {
    public var id: String {
        self.title ?? UUID().uuidString
    }
}
