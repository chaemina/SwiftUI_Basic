//
//  DarkmodeBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct DarkmodeBasic: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    // 1. primary and secondary color 는 자동으로 다크 모드 일 때 색 변환
                    Text("primary 색상")
                        .foregroundColor(.primary)
                    Text("secondary 색상")
                        .foregroundColor(.secondary)
                    // 2. assets에서 라이트 / 다크 모드 색 설정
                    Text("Assets에서 Adaptive 색 설정")
                        .foregroundColor(Color("Adaptive"))
                    // 3. 환경 변수 사용
                    Text("환경 변수 사용해서 Adaptive 섹 설정")
                        .foregroundColor(colorScheme == .light ? .black : .white)
                }
            } // :scroll
        } // navigation
    }
}

#Preview {
    DarkmodeBasic()
}
