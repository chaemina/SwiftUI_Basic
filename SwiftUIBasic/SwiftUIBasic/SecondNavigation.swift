//
//  SecondNavigation.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct SecondNavigation: View {
    
    //navigation 연결해도 환경 변수 필요 ??
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack {
            // background
            Color.green.ignoresSafeArea()
            
            VStack {
            // 이전으로 이동 하는 버튼 만들기
                Button {
                    // sheet과 같음
                    presentaionMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    SecondNavigation()
}
