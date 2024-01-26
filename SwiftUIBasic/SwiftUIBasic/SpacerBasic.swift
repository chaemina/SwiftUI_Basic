//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
             Image(systemName: "xmark")
                
                Spacer()
                    .background(Text("첫번째 Spacer")
                        .font(.largeTitle))
                
                Image(systemName: "gear")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(.horizontal)
            
            Spacer()
                .frame(width:500)
                .background(Text("두번째 Spacer")
                    .font(.largeTitle))
        }
    }
}

#Preview {
    SpacerBasic()
}
