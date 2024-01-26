//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        //1
        VStack(spacing: 20) {
            Text("hello world")
                .font(.title)
                .background(Color.green)
            // 프레임의 크기를 확인 하기 위해
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.red)
            
            Divider()
            
            // 2
            Text("Hello, world")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity ,alignment: .center)
                .background(Color.red)
        }
        
        //3
        VStack(spacing:20) {
            Text("Hello, world")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200, height:100)
                .background(Color.purple)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .background(Color.pink)
                .frame(height:400)
                .background(Color.green)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)

        }
    }
}

#if DEBUG
struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        FrameBasic()
    }
}
#endif
