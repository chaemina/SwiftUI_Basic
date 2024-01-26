//
//  FruitView.swift
//  MVVMProject
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

struct FruitView: View {
    
    @StateObject var fruitVeiwModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List {
                if fruitVeiwModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitVeiwModel.fruitArray) { fruit in
                        HStack {
                            
                            Text("\(fruit.count)")
                                .font(.headline)
                                .foregroundColor(.blue)
                            
                            Text(fruit.name)
                        } //:hstack
                    } // : foreach
                } // condition
            } // :list
            .navigationTitle("과일 리스트")
            .navigationBarItems(trailing:
            NavigationLink(
                destination: SecondScreen(),
                label: {
                    Image(systemName: "arrow.right")
                })
            )
        }// :navigation
    }
}

struct SecondScreen:  View {
    
    @ObservedObject var fruitVeiwModel = FruitViewModel() // 뷰모델 사용 위함
    
    @Environment(\.presentationMode) var presentationMode // 뒤로 가기 위함
    
    var body : some View {
        ZStack {
            Color.green.ignoresSafeArea()
            

            VStack (spacing: 20) {
                
                if fruitVeiwModel.isLoading {
                    ProgressView()
                }else {
                    ForEach(fruitVeiwModel.fruitArray) { fruit in
                        Text(fruit.name)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                    }
                }
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로 가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }

        }
    }
}

#Preview {
    FruitView()
}
