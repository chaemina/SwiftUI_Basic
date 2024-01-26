//
//  ForEachBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct ForEachBasic: View {
    
    // 변수 생성
    var data : [String] = ["hi", "hello", "hello world"]
    
    
    var body: some View {
        
        //1번
        VStack {
            // 0부터 9까지 반복
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("index : \(index)")
                }
            }
            
            Divider()
            
            // data의 길이 만큼 반복
            ForEach(data, id: \.self) {Text($0)}
            
        }
    }
}

#Preview {
    ForEachBasic()
}
