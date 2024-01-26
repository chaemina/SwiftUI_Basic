//
//  PickerBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI



struct PickerBasic: View {
    
    let typeOfPhone : [String] = ["애플", "삼성", "샤오미", "기타 브랜드"]
    
    @State var selectedIndex : Int = 0
    
    var body: some View {
        NavigationView {
            Form{
                Section{
                    Picker(selection: $selectedIndex,label: Text("기종 선택")){
                        ForEach(0 ..< typeOfPhone.count, id: \.self){ index in
                            Text(typeOfPhone[index])
                        }
                    } // : picker
                    .pickerStyle(.wheel)
                } // : section
                
                Section {
                    Text("핸드폰 제조사는 \(typeOfPhone[selectedIndex]) 입니다.")
                }
            } // :form
            .navigationTitle("현재 사용중인 핸드폰 기종은?")
            .navigationBarTitleDisplayMode(.inline)
        } // : navigation
    }
}

#Preview {
    PickerBasic()
}
