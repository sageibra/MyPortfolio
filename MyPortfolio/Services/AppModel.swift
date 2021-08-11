//
//  AppModel.swift
//  MyPortfolio
//
//  Created by Ibragim Akaev on 10/08/2021.
//

import Foundation

final class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(
        name: "Akaev Ibragim",
        role: "IOS Developer",
        description: "iOS Developer who is passionate about building apps and learning new technologies.",
        location: "Moscow, RU",
        skills: [
            Skill(skillName: "Swift", image: "swift"),
            Skill(skillName: "UIKit", image: "uikit"),
            Skill(skillName: "SwiftUI", image: "swiftui"),
            Skill(skillName: "Combine", image: "combine"),
            Skill(skillName: "GitHub", image: "github"),
            Skill(skillName: "GitLab", image: "gitlab"),
            Skill(skillName: "CoreData", image: "coredata"),
            Skill(skillName: "Realm", image: "realm"),
            Skill(skillName: "Alamofire", image: "alamofire"),
            Skill(skillName: "Moya", image: "moya"),
            Skill(skillName: "Firebase", image: "firebase"),
            Skill(skillName: "Lottie", image: "lottie"),
            Skill(skillName: "KFisher", image: "kingfisher"),
            Skill(skillName: "WImage", image: "sdwebimage"),
            Skill(skillName: "RxSwift", image: "rxswift")
        ],
        experience: [
            Experience(companyName: "Quran Academy", role: "Junior IOS Developer", duration: "Feb 2021 - Aug 2021"),
            Experience(companyName: "Tooba Ltd", role: "Junior IOS Developer", duration: "Feb 2021 - May 2021"),
        ])
}
