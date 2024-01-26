//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
        
//        // z-index
//        ZStack(alignment: .topLeading){
//            Rectangle() //3
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//            Rectangle() //2
//                .fill(Color.green)
//                .frame(width: 130, height: 130)
//            Rectangle() //1
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//        }
//        
//        //비교 코드
//        ZStack(alignment: .topLeading){
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 200, height: 100)
//            Circle()
//                .fill(Color.red)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//        }
//        
//        Rectangle()
//            .fill(Color.blue)
//            .frame(width: 200, height: 100)
//            .overlay(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 100)
//                ,alignment: .topLeading
//            )
        
        // mix
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            VStack(alignment: .leading, spacing: 20){
                Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                ZStack(alignment: .center){
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 170, height: 80)
                    HStack(alignment: .bottom) {
                        Rectangle()
                            .fill(Color.purple)
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .fill(Color.pink)
                            .frame(width: 80, height: 80)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 20, height: 20)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    StackBasic()
}
