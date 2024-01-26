//
//  ToggleBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct ToggleBasic: View {
    
    @State var isToggleOn : Bool = false
    
    
    var body: some View {
        
        VStack(spacing: 10){
            HStack {
                Text("로그인 상태")
                Text(isToggleOn ? "로그인" : "로그아웃")
                    .foregroundColor(isToggleOn ? .blue : .red)
            }
            Toggle(isOn: $isToggleOn){
                Text("로그인 상태 선택")
            }
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBasic()
}
