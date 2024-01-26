//
//  ActionSheetBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    @State var showActionSheet : Bool = false
    @State var resultActionSheet : String = ""
    
    var body: some View {
        VStack {
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Jacob ko")
                
                Spacer()
                
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
            }.padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
            
            Spacer()
        } // VStack
        .actionSheet(isPresented: $showActionSheet, content: {
            getActionSheet()
        })
    }
    
    
    // function
    func getActionSheet() -> ActionSheet {
        let shareButton : ActionSheet.Button = .default(Text("공유하기")) {
            // action
            resultActionSheet = "공유 되었습니다."
        }
        let reportButton : ActionSheet.Button = .default(Text("신고하기")) {
            // action
            resultActionSheet = "신고 되었습니다."
        }
        let deleteButton : ActionSheet.Button = .destructive(Text("삭제하기")) {
            // action
            resultActionSheet = "삭제 되었습니다."
        }
        let cancleButton : ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("action sheet 제목"),
            message: Text("action sheet 메세지"),
            buttons: [shareButton,reportButton,deleteButton,cancleButton])
    }
}

#Preview {
    ActionSheetBasic()
}
