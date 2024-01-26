//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        
        VStack(spacing:20) {
         
            // Basic
            Text("Basic Color")
                .font(.title)
            Circle()
                .fill(Color.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            // Primary
            // 자동으로 다크 모드 색 지원
            Text("Primary Color")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Circle()
                .fill(Color.secondary)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            // UI Color
            // apple에서 지원하는 컬러 키트
            Text("UI color")
                .font(.title)
            Circle()
                .fill(Color(UIColor.secondarySystemFill))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            // Custom Color
            // 헥사 코드로 색상 지정
            // assets에서 만든 컬러 사용
            Text("Custom color")
                .font(.title)
            Circle()
                .fill(Color("CustomColor"))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/) // dark mode
}
