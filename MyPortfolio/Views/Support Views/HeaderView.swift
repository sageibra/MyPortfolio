//
//  HeaderView.swift
//  MyPortfolio
//
//  Created by Ibragim Akaev on 10/08/2021.
//

import SwiftUI

struct HeaderView: View {
    var appModel: AppModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("photo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 5).shadow(radius: 2))
                Spacer()
            }
            
            Text(appModel.portfolio.name)
                .font(Montserrat.bold.font(size: 24))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(Montserrat.mediumItalic.font(size: 16))
                .opacity(0.85)
                .padding(.top, -2)
            
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 16, weight: .semibold))
                Text(appModel.portfolio.location)
                    .font(Montserrat.medium.font(size: 17))
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 10, height: 10)
            }
            .padding(.top, 10)
            .opacity(0.45)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
    }
}
