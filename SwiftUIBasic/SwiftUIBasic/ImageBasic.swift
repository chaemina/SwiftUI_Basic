//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/9/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        ZStack(){
            Color("BackgroundColor").ignoresSafeArea()
            Image("광주버스_버스")
                .resizable()
            VStack() {
                Image("광주버스소제목_흰색")
                        .frame(width: 134.67241, height: 20.47563)
                        .overlay(
                            Image("광주버스소제목_주황색")
                                .frame(width: 134.67241, height: 20.47563)
                    )
                .frame(width: 225.05301, alignment: .topLeading)
                    Image("광주버스_흰색")
                        .frame(width: 225.05301, height: 52.57892)
                        .shadow(color: Color(red: 1, green: 0.58, blue: 0.19).opacity(0.17), radius: 3.88977, x: 0, y: 1.29659)
                        .overlay(
                    Image("광주버스_주황색")
                        .frame(width: 225.05301, height: 52.57892))
            }
            .padding(.leading, 16)
            .padding(.trailing, 16.66183)
            .padding(.top, 18)
            .padding(.bottom, 17.21875)
            .frame(width:250, height: 500, alignment: .topLeading)
        }
    }
}

#Preview {
    ImageBasic()
//        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
