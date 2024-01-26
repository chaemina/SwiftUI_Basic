//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct BindingChild: View {
    
    @State var buttonColor : Color = Color.blue
    @Binding var backgroundColor : Color
    @Binding var title : String

    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Biding Child View"
        }, label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingChild(backgroundColor: .constant(Color.black), title: .constant("binding child"))
        .previewLayout(.sizeThatFits)
}
