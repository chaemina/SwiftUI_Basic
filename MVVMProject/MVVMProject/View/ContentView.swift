//
//  ContentView.swift
//  MVVMProject
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct ContentView: View {
    
    // 모델에서 생성한 구조체를 타입으로 사용한다.
    // 하위 컴포넌트(모델)를 상위 컴포넌트(뷰) 에서 임포트 해서 사용하는 느낌
    @State var users : [UserModel] = [
        UserModel(displayName: "철수", userName: "철수1234", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", userName: "영희1234", followerCount: 20, isChecked: false),
    ]
    
    var body: some View {
        NavigationView{
            List {
                    // 이미 모델 생성 시 아이디 값 지정해서, id 설정하면 오류남
                    ForEach(users) { user in
                        HStack(spacing: 20) {
                            
                            Circle()
                                .frame(height: 40)
                            
                            VStack(alignment: .leading) {
                                Text(user.displayName)
                                    .font(.headline)
                                Text(user.userName)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            if user.isChecked {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.blue)
                            }
                            
                            VStack(alignment: .center) {
                                Text("\(user.followerCount)") //변수여도 int타입이면 보간법으로 출력해야함
                                    .font(.headline)
                                Text("followers")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }

                        } // : hstack
                    } // : loop
            } // : list
                .navigationTitle("회원 리스트")
        }//: navigation
    }
}

#Preview {
    ContentView()
}
