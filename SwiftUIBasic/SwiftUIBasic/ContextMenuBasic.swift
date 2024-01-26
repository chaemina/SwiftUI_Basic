//
//  ContextMenuBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct ContextMenuBasic: View {
    
    @State var backgroundColor : Color = .teal
    @State var statusText : String = ""
    
    var body: some View {
        VStack(spacing:30) {
            
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Context menu")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다.")
                    .font(.subheadline)
            }// : VStack
            .foregroundColor(.white)
            .padding(30)
            .background(backgroundColor)
            .cornerRadius(20)
            .contextMenu{
                Button(action: {
                    statusText = "공유가 되었습니다."
                    backgroundColor = .yellow
                }, label: {
                    Label {
                        Text("Share Post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                })
                
                Button(action: {
                    statusText = "신고가 되었습니다."
                    backgroundColor = .red
                }, label: {
                    Label {
                        Text("Report Post")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }
                })
                
                Button(action: {
                    statusText = "좋아요 추가."
                    backgroundColor = .purple
                }, label: {
                    Label {
                        Text("Like Post")
                    } icon: {
                        Image(systemName: "hand.thumbsup")
                    }
                })
    
                
            }
        }
    }
}
                
#Preview {
    ContextMenuBasic()
}
