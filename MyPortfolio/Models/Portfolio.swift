//
//  Portfolio.swift
//  MyPortfolio
//
//  Created by Ibragim Akaev on 10/08/2021.
//

import Foundation

struct Skill: Identifiable {
    var id = UUID()
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id = UUID()
    let companyName: String
    let role: String
    let duration: String
}

struct Portfolio {
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experience: [Experience]
}

