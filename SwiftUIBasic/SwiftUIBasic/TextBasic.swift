//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20){
            
            Text("Hello, World!")
                .font(.title2)
                .fontWeight(.light)
                .bold()
                .underline(true, color: Color.indigo)
                .italic()
                .strikethrough(true, color: Color.yellow)
                .foregroundColor(.pink)
            
            
            Text("hello world 2".uppercased())
                .font(.system(size: 20, weight: .bold, design: .serif))
            
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.trailing)
            // leading : 왼쪽 center : 중앙 trailing : 오른쪽
            

        }
    }
}

#Preview {
    TextBasic()
}

    
