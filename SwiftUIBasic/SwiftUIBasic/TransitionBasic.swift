//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct TransitionBasic: View {
    
    @State var showTranstion : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button(action: {
                    withAnimation(.easeInOut) {
                        showTranstion.toggle()}
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                
                Spacer()
            }
            if showTranstion {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5) // 전체의 절반
                    .opacity(showTranstion ? 1.0 : 0.0) // 참일 때만 불투명
                
                    .transition(.move(edge: .bottom))
            }
        }.ignoresSafeArea(edges: .bottom)
    }
}
#Preview {
    TransitionBasic()
}
