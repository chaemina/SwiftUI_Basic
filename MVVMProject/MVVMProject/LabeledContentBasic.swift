//
//  LabeledContentBasic.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import SwiftUI

struct LabeledContentBasic: View {

    var body: some View {
        VStack(spacing: 30){
            Text("Label Content")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            LabeledContent {
                Image(systemName: "star")
            } label: {
                VStack(alignment: .leading){
                    Text("국립아시아문화전당(구,도청)")
                        .font(.headline)
                    Text("1121 | 금남로5가역 방면")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }.padding()
            
            
            List {
                LabeledContent("키", value: "값")
                LabeledContent("국립아시아문화전당(구, 도청)") {
                    Label("", systemImage: "star")
                }
            }
        }
    }
}

#Preview {
    LabeledContentBasic()
}
