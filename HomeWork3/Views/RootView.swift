//
//  ContentView.swift
//  HomeWork3
//
//  Created by Vitaliy Voronok on 25.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI
import JobAPI


struct RootView: View {
   
    init() {
        JobAPI.getJob(description: "swift", page: 1) { jobsList, error in
            print(jobsList)
            print(error)
        }
    }
    var body: some View {
        Text("Hello, World!")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
