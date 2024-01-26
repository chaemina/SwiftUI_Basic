//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing:20){
            Image(systemName: "square.and.arrow.up")
                .resizable() // 사이즈 변경 할 수 있도록
                .renderingMode(.original) //고유 컬러 적용됨 -> 커스텀 적용 안됨
                .scaledToFill()
                .foregroundColor(Color.blue)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    IconBasic()
}
