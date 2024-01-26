//
//  ExtractViewBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    

    @State var backgroundColor : Color = Color.black
    @State var title : String = "아직 버튼 안눌림"
    @State var cnt : Int = 0
    
    var body: some View {
        
        ZStack() {
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        
        VStack(spacing:20) {
            
            Text(title)
                .font(.title)
            
            Text("\(cnt)")
                .font(.title)
            
            buttonLayer
        }.foregroundColor(.white)
    }
    
    var buttonLayer: some View {
        
        
        HStack(spacing:20) {
            // 1번 버튼
            Button(action: {
                buttonPressed(backgroundColor: .pink, title: "1번 버튼 눌림", cnt: 1)
            } , label: {
                Text("1번 버튼")
            })
            // 2번 버튼
            Button(action: {
                buttonPressed(backgroundColor: .purple, title: "2번 버튼 눌림", cnt: -1)
            } , label: {
                Text("2번 버튼")
            })
            
        }
    }
    
    func buttonPressed(backgroundColor: Color, title: String, cnt: Int) {
        self.backgroundColor = backgroundColor
        self.title = title
        self.cnt += cnt
    }
    
}

#Preview {
    ExtractViewBasic()
}
