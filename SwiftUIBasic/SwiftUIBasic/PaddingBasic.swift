//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
         
            //1. padding 기본
            Text("Hello, world")
                .background(Color.yellow)
                .padding() // .padding(.all, 15) 와 같은 값
                .padding(.leading, 20) // frame의 padding
                .background(Color.blue)
                .padding(.bottom, 20) // frame의 margin
            
            
             Divider()
            
            // 2. padding 응용
            Text("Hello, world")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요, 헬로우 월드. 안녕하세요, 헬로우 월드. 안녕하세요, 헬로우 월드. 안녕하세요, 헬로우 월드. 안녕하세요, 헬로우 월드. 안녕하세요, 헬로우 월드.")
        }
        .padding()
        .padding(.vertical, 30)
        .background(Color.orange
            .cornerRadius(10)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:10, y:10))
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
