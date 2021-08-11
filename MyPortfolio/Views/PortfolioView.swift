//
//  PortfolioView.swift
//  MyPortfolio
//
//  Created by Ibragim Akaev on 10/08/2021.
//

import SwiftUI

struct PortfolioView: View {
    var appModel = AppModel()
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HeaderView(appModel: appModel)
                    
                    Text(appModel.portfolio.description)
                        .font(Montserrat.italic.font(size: 16))
                        .opacity(0.7)
                        .padding(.top, 24)
                        .lineSpacing(12)
                    
                    SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                    ListOfExperienceView(experience: appModel.portfolio.experience)
                        .padding(.top, 42)
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
