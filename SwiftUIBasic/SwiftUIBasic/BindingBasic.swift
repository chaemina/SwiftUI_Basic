//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct BindingBasic: View {
    
    @State var backgroundColor : Color = Color.green
    @State var title : String = "Binding Basic View"
    
    var body: some View {
        
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack {
                Text(title)
                
                // button
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
