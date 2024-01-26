//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct StateBasic: View {
    
    // 상태 관리 변수 생성
    @State var backgroundColor : Color = Color.black
    @State var title : String = "아직 버튼 안눌림"
    @State var cnt : Int = 0
    
    var body: some View {
        
        // 바탕 화면 지정을 위한 Zstack
        ZStack() {
            
            backgroundColor
                .ignoresSafeArea()

            // 요소들 수직 정렬
            VStack(spacing:20) {
                Text(title)
                    .font(.title)
                
                Text("\(cnt)")
                    .font(.title)
                
                
                // 버튼들 수평 정렬
                HStack(spacing:20) {
                    // 1번 버튼
                    Button(action: {
                        self.backgroundColor = .pink
                        self.title = "1번 버튼 눌림"
                        self.cnt += 1
                    } , label: {
                        Text("1번 버튼")
                    })
                    
                    Button(action: {
                        self.backgroundColor = .purple
                        self.title = "2번 버튼 눌림"
                        self.cnt -= 1
                    } , label: {
                        Text("2번 버튼")
                    })
                    
                }
            }.foregroundColor(.white)
            
        }
    }
}

#Preview {
    StateBasic()
}
