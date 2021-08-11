//
//  ExperienceView.swift
//  MyPortfolio
//
//  Created by Ibragim Akaev on 10/08/2021.
//

import SwiftUI

struct ExperienceView: View {
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading) {
                    Text(experience.role)
                        .font(Montserrat.semibold.font(size: 18.5))
                    
                    Text(experience.companyName)
                        .font(Montserrat.medium.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top, 4)
                    
                    Text(experience.duration)
                        .font(Montserrat.medium.font(size: 16))
                        .opacity(0.45)
                        .padding(.top, 14)
                    
                }.padding(.leading, 16)
            }.padding(.top, 8)
        }.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperienceView(experience: AppModel().portfolio.experience[0])
                .padding(24)
        }
        
    }
}
