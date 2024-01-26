//
//  NavigationStack.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import SwiftUI

struct NavigationStackBasic: View {
    
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stack) {
            NavigationLink("페이지 이동", value: 30)
                .navigationDestination(for: Int.self) { value in
                    // 2번 페이지
                    VStack (spacing: 20) {

                        Text("전달 된 값 : \(value)")
                        
                        Button(action: {
                            stack.removeLast() // 이전 페이지로 이동
                            
                        }, label: {
                            Text("이전 페이지로 이동")
                        })
                        
                        Button(action: {
                            stack = .init() // 초기화면으로 이동
                        }, label: {
                            Text("초기 화면으로 이동")
                        })
                    }
                }
        }
    }
}

#Preview {
    NavigationStackBasic()
}
