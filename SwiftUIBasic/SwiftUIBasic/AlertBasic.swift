//
//  AlertBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct AlertBasic: View {
    
    @State var showAlert1 : Bool = false
    @State var showAlert2 : Bool = false
    @State var showAlert3 : Bool = false
    
    @State var backgroundColor : Color = .yellow
    @State var alertTitle : String = ""
    @State var alertMsg : String = ""
    
    enum AlertCase {
        case success
        case error
    }
    
    @State var alertType : AlertCase? = nil
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button(action: {
                    showAlert1.toggle()
                }, label: {
                    Text("Alert 1")
                }).alert(isPresented: $showAlert1, content: {
                    Alert(title:
                            Text("패스워드 에러 입니다. 다시 확인하세요."))
                })
                
                Button(action: {
                    showAlert2.toggle()
                }, label: {
                    Text("Alert 2")
                }).alert(isPresented: $showAlert2, content: {
                    getAlert2()
                })
                
                HStack(spacing:10) {
                    Button(action: {
                        alertType = .error
                        alertTitle = "로그인 실패"
                        alertMsg = "로그인에 실패하였습니다."
                        showAlert3.toggle()
                    }, label: {
                        Text("Alert 실패 시")
                    })
                    
                    Button(action: {
                        alertType = .success
                        alertTitle = "로그인 성공"
                        alertMsg = "로그인에 성공하였습니다."
                        showAlert3.toggle()
                    }, label: {
                        Text("Alert 성공 시")
                    })
                    
                    
                }.alert(isPresented: $showAlert3, content: {
                    getAlert3()
                })
                
            }
            
        }
    }// :body
    
    // function
    func getAlert2() -> Alert {
        return Alert(
            title: Text("메세지 삭제"),
            message: Text("정말 삭제 하시겠습니까?"),
            primaryButton: .destructive(Text("Delete"), action: { backgroundColor = .red}),
            secondaryButton: .cancel())
    }
    
    func getAlert3() -> Alert {
        switch alertType {
        case .success:
            return Alert(
                title: Text(alertTitle),
                message: Text(alertMsg),
                dismissButton: .default(Text("OK")) {
                    backgroundColor = .green
                }
            )
        case .error:
            return Alert(
                title: Text(alertTitle),
                message: Text(alertMsg),
                dismissButton: .default(Text("OK")) {
                    backgroundColor = .red
                }
            )
        case nil:
            return Alert(
                title: Text("원인 모르는 에러 발생"),
                message: Text("원인을 알 수 없는 에러입니다."),
                dismissButton: .default(Text("OK")) {
                    backgroundColor = .purple
                }
            )
        }
    }
}


#Preview {
    AlertBasic()
}
