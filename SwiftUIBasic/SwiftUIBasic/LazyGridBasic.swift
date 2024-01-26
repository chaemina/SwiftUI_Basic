//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct LazyGridBasic: View {
    
    // LazyVGrid
    // columns 의 개수 3개로 설정
    let col : [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    // LazyHGrid
    let title: [String] = Array(1...100).map{"목록 \($0)"}
    // row의 개수 2개로 설정
    let row: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
    ]
    
    var body: some View {
        //LazyVGrid
        ScrollView {
            
            //Hero (이미지)
            Image("광주버스_주황색")
                .frame(height: 400)
            
            //grid
            LazyVGrid(columns: col,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("section1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .background(.orange)
                    .padding())
                { ForEach(0..<21) { index in
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 150)
                        .overlay(
                            Text("\(index)"))
                }
                }// : section 1
                
                Section(header:
                            Text("section2")
                    .foregroundColor(.orange)
                    .font(.title)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .background(.white)
                    .padding())
                { ForEach(0..<21) { index in
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 150)
                        .overlay(
                            Text("\(index)"))
                }
                }// : section 2
            }
        } // : LazyVGrid
        
        
        //LazyVGrid
        ScrollView(.horizontal){
            LazyHGrid(rows: row, spacing: 20){
                ForEach(title, id: \.self){ Text($0)}
            }
        }
    }
}

#if DEBUG
struct LazyGridBasic_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBasic()
    }
}
#endif
