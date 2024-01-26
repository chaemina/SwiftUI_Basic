//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct ButtonBasic: View {
    
    // 상태 관리 변수 생성
    @State var mainTitle : String = "아직 버튼 안눌림"
    
    var body: some View {
        VStack(spacing: 20){
            
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            Button(action: {
                // 변수 mainTitle 의 컨텐츠 변화 시킴
                self.mainTitle = "기본 버튼 눌림"
            } , label: {
                Text("기본 버튼")
            })
            .accentColor(.blue)
            
            
            Button(action: {
                // 변수 mainTitle 의 컨텐츠 변화 시킴
                self.mainTitle = "리셋"
            } , label: {
                Text("리셋 버튼")
            })
            .accentColor(.red)
            
            Divider()
            
            Button(action: {
                // 변수 mainTitle 의 컨텐츠 변화 시킴
                self.mainTitle = "저장 버튼 눌림"
            } , label: {
                Text("저장")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(width: 100, height: 50)
                    .background(
                    Rectangle()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    )
            })
            
            Divider()
            
            Button(action: {
                // 변수 mainTitle 의 컨텐츠 변화 시킴
                self.mainTitle = "하트 버튼 눌림"
            } , label: {
               Circle()
                    .fill(Color.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: 80)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
                
            })
            
            
            
            
        }
    }
}

#Preview {
    ButtonBasic()
}
