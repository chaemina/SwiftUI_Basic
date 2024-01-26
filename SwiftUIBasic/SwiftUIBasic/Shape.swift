//
//  Shape.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        VStack(spacing: 20) {
         
            // 원형
            Text("circle")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Circle()
            //                .fill(Color.yellow) //우선순위
            //                .foregroundColor(.pink)
            //                .stroke(Color.orange, lineWidth: 5) // foreground와 동시 사용 안됨
            //                .stroke(Color.purple, style: StrokeStyle(lineWidth:20, lineCap: .round, dash: [30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 100, height: 100, alignment: .center)
                .padding()

            // 타원형
            Text("Ellipse")
                .font(.title)
            
            
            Ellipse()
                .fill(Color.gray)
                .stroke(Color.black, lineWidth: 10)
                .frame(width: 200, height: 100, alignment: .center)
            
          
            // 캡슐형
            Text("Capsule")
                .font(.title)
            
            Capsule(style: .continuous)
                .stroke(Color.green, lineWidth: 10)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .center)
        }
        
        VStack(spacing: 20){
            
            // 직사각형
            Text("Rectangle")
                .font(.title)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 50, alignment: .center)
            
            Text("RoundedRectangle")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.5, to: 1.0)
                .stroke(Color.teal, lineWidth: 5)
                .frame(width: 200, height: 50, alignment: .center)
        }
        
    }
}

#Preview {
    Shape()
}
