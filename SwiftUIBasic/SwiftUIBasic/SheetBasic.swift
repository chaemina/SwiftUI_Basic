//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct SheetBasic: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label : {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }
            
//            .fullScreenCover(isPresented: $showSheet){
//                SheetBasic2()
//            }
        }
    }
}

#Preview {
    SheetBasic()
}
