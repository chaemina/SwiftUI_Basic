//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct NavigationBasic: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        NavigationView{
            
            NavigationLink {
                // 이동 할 뷰
                SecondNavigation()
            } label: {
                Text("Second view 로 이동")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .navigationTitle("페이지 제목")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/) // 제목 감추기
            // 상단 좌우에 아이콘, 텍스트, 버튼
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(
                    action: {showSheet.toggle()},
                    label: { Image(systemName: "gear" )}))
        }
        
        .sheet(isPresented: $showSheet, content: {
            ZStack {
                Color.green.ignoresSafeArea()
                Text("설정 페이지 입니다.")
            }
        })
    }
}

#Preview {
    NavigationBasic()
}
