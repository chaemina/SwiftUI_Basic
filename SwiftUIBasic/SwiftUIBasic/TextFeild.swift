//
//  TextFeild.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct TextFeild: View {
    
    @State var inputText : String = ""
    @State var searchData : [String] = []
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 20){
                TextField("버스 또는 정류장 검색", text: $inputText)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .font(.headline)
                Button(action: {
                    //클릭 시 저장
                    if isTextEnough() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }).disabled(!isTextEnough())
                
                Spacer()
                
                ForEach(searchData, id: \.self){item in
                    Text(item)
                }
            }
            .padding()
            .navigationBarItems(leading: Image(systemName: "line.3.horizontal"))
            .navigationTitle(Text("광주버스"))
            .navigationBarTitleDisplayMode(.inline)
        }// navigation
        
        
    }// :body
    
    func isTextEnough() -> Bool {
        if (inputText.count >= 2){
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        searchData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFeild()
}
