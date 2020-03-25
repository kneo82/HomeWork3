//
//  JobsService.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 25.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation
import JobAPI


final class JobsService {
    
    func getJobs(handler: @escaping ([JobModel]) -> Void) {
        JobAPI.getJob(description: "swift", page: 1) { (job, error) in
            if let job = job {
                let result = job.map { JobModel(title: $0.title, description: $0.description, company: $0.company, companyUrl: $0.companyUrl)}
              handler(result)
            } else if let error = error {
              print("Job failed with error: \(error.localizedDescription)")
              print(error.localizedDescription)
                handler([JobModel]())
            }
        }
    }
}
