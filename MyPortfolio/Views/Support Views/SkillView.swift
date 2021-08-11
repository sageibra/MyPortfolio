//
//  SkillView.swift
//  MyPortfolio
//
//  Created by Ibragim Akaev on 10/08/2021.
//

import SwiftUI

struct SkillView: View {
    var skill: Skill
    var width: CGFloat = 120
    
    var body: some View {
        VStack {
            Image(skill.image)
                .resizable()
                .frame(width: 35, height: 35)
                .opacity(0.8)
            
            Text(skill.skillName)
                .font(Montserrat.semibold.font(size: 13.5))
                .padding(.top, 10)
        }
        .padding()
        .frame(width: width, height: 109.7)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}
