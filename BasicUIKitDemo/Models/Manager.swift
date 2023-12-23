//
//  Coach.swift
//  BasicUIKitDemo
//
//  Created by NB1003517 on 23/12/2566 BE.
//

import Foundation

enum JobType: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: JobType
}
