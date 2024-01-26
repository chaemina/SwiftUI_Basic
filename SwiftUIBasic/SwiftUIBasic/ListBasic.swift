//
//  ListBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct ListBasic: View {
    
    @State var fruits : [String] = ["사과", "딸기", "복숭아", "귤"]
    @State var meats : [String] = ["소고기", "닭고기", "오리고기", "돼지고기"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    //content
                    ForEach(fruits, id: \.self){
                        Text($0)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    //secton 안에서 선언
                    // onDelete와 onMove 이벤트 발생 시 선언한 함수 동작
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    // 제목
                    Text("과일 종류")
                } // :section 1
            
                Section {
                    ForEach(meats, id: \.self){
                        Text($0)
                    }
                } header: {
                    Text("고기 종류")
                }
            } // :list
            // naviagation바 아이템 메소드로 상단 좌우에 버튼 배치
            // 네비게이션 바 아이템으로 수정 버튼 해야지 수정 기능이 동작 함
            // 수정 버튼은 지원하지만, 지원 안하는 버튼은 컴포넌트 뷰로 따로 만들어야 함
            .navigationBarItems(leading: EditButton())
        } // : navigation view
    } // : body
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
}

#Preview {
    ListBasic()
}
