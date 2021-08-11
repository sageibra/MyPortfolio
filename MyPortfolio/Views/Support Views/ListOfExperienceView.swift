//
//  ListOfExperienceView.swift
//  MyPortfolio
//
//  Created by Ibragim Akaev on 10/08/2021.
//

import SwiftUI

struct ListOfExperienceView: View {
    var experience: [Experience]
    @State var showExperience = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("Experience")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperience.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperience ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            if showExperience {
                    ForEach(experience) { exp in
                        ExperienceView(experience: exp)
                    }
            }
        }
    }
}

struct ListOfExperience_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ListOfExperienceView(experience: AppModel().portfolio.experience)
                .padding(24)
        }
    }
}
