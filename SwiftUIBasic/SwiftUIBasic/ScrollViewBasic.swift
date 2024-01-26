//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct InitBasic: View {
    
    // 변수 선언
    let backgroundColor : Color
    let count : Int
    let title : String
    
    // enum
    enum Fruit {
        case apple
        case orange
    }
    
    // init 함수 생성
    init(count: Int, fruit: Fruit){
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    // UI 화면
    var body: some View {
        VStack(spacing: 0){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        
    }
}

#Preview {
    // 호출
    HStack {
        InitBasic(count: 100, fruit: .apple)
        InitBasic(count: 50, fruit: .orange)
    }
    
}
