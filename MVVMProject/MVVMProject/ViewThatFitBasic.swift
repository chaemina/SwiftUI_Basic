//
//  ViewThatFitBasic.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import SwiftUI

struct ViewThatFitBasic: View {
    var body: some View {
        VStack (spacing: 20){
            Text("1. View that fit horizontal")
                .font(.title.bold())
                .foregroundColor(.blue)
            
            // view의 사이즈를 측정해서 in .horizontal 방향으로 측정
            ViewThatFits(in: .horizontal) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.pink.opacity(0.7))
                    .overlay{
                        Text("가로 모드")
                    }
                    .frame(width: 700, height: 75)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.orange.opacity(0.7))
                    .overlay{
                        Text("세로 모드")
                    }
                    .frame(width: 350, height: 75)
            }
        }

    }
}

#Preview() {
    ViewThatFitBasic()
}
