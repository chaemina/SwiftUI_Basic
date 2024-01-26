//
//  ConditionalBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct ConditionalBasic: View {
    
    @State var isLoading : Bool = false
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                isLoading.toggle() // isLoading 값을 갖는 toggle 버튼 생성
            }, label: {
                Text("로딩 버튼 \(isLoading.description)")
                    .font(.caption)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
                    .background(
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 10))
            })
            
            
            Text(isLoading ? "로딩 중 ..." : "로딩 끝")
            
            if isLoading {
                ProgressView()
            }
        }
    }
}
#Preview {
    ConditionalBasic()
}
