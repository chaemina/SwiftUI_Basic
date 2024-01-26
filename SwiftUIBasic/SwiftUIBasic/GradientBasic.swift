//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20){
            
            // Linear
            Text("Linear Gradient")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300)
            
            // Radial
            Text("Radial Gradient")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.red, Color.yellow]), //색상
                        center: .leading, // (시작점)중심점
                        startRadius: 5, // 시작 크기
                        endRadius: 100) // 퍼짐 크기
                )
                .frame(width: 300)
            
            // Angular
            Text("Angular Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.blue]),
                        center: .topLeading,
                        angle: .degrees(180 + 45))
                )
                .frame(width: 300)
        }
    }
}

#Preview {
    GradientBasic()
}
