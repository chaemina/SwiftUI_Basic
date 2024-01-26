 //
//  BackgroundOverlayBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack(spacing: 20){
            
            
           Circle()
            .fill(Color.yellow)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .overlay(Color.green)
            
            
            
            // 2. overlay
            Circle()
                .fill(Color.pink)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .overlay(
                    Text("1")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120, height: 120, alignment: .center))
        }
        
        Divider()
        
        // Background and overlay
        
        
        Rectangle()
           .frame(width: 200, height: 200)
           .overlay(
           // 오버레이 안에 원을 그린다.
              Circle()
                   .fill(Color.blue)
                   .frame(width:100 , height: 100)
                ,alignment: .leading  )
        
        Divider()
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                       startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                                       endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .shadow(color: Color.blue, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0, y:10)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("2")
                                    .font(.headline)
                                    .foregroundColor(Color.white))
                            .shadow(color: Color.red, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:5, y:5)
                        ,alignment: .bottomTrailing
                    )
                    .padding()
                
            )
    }
}

#Preview {
    BackgroundOverlayBasic()
}
