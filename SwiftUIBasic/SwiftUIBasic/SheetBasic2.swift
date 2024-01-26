//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct SheetBasic2: View {
    
    // sheet 를 바인딩 할때 선언 해줘야 함
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.purple.ignoresSafeArea()
            
            Button {
                // sheet 닫기
                presentaionMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
            }
        }
    }
}

#Preview {
    SheetBasic2()
}
