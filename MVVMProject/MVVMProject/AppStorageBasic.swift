//
//  AppStorageBasic.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import SwiftUI

struct AppStorageBasic: View {
    
    @State var generalName : String?
    @AppStorage("name") var storageName: String?
    
    var body: some View {
        VStack(spacing:30) {
            
            // state
            
            VStack(spacing:10) {
                Text("State로 저장")
                Text(generalName ?? "당신의 이름은 무엇인가요?")
                
                Button(action: {
                    generalName = "jacob"
                }, label: {
                    Text("이름 불러오기")
                })
                
            }
            
            // storage
            VStack(spacing:10) {
                
                Text("Storage 로 저장")
                Text(storageName ?? "당신의 이름은 무엇인가요?")
                
                Button(action: {
                    storageName = "jacob"
                }, label: {
                    Text("이름 불러오기")
                })
                
                Button(action: {
                    storageName = "당신의 이름은 무엇인가요?"
                }, label: {
                    Text("이름 지우기")
                })
                
                
            }
        }
    }
}

#Preview {
    AppStorageBasic()
}
