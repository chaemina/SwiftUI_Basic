//
//  NavigationBasic.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import SwiftUI

struct NavigationBasic: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 20) {
                
                // link로 페이지 이동, 인수 전달
                NavigationLink(value: "String Test") {
                    Text("navigation 1")
                }
                
                NavigationLink(value: true) {
                    Text("navigation 2")
                }
            }
            .navigationDestination(for: String.self, destination: { stringValue in
                Text("전달 받은 값 : \(stringValue)")
            })
            .navigationDestination(for: Bool.self, destination: { boolValue in
                Text("전달 받은 값 : \(boolValue.description)")
            })
            .navigationTitle("Navigation destination")
        }
        .font(.title)
    }
}


struct NavigationWithSheet: View {
    
    @State private var showSheet : Bool = false
    @State private var navigate : Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("show Sheet") {
                    showSheet.toggle()
                }
            }
            .navigationTitle("Naviagation with sheet")
            .sheet(isPresented: $showSheet, content: {
                VStack (spacing: 20) {
                    // 1. sheet 안에서는 navigation link 버튼이 disable되어 사용 불가
                    NavigationLink {
                        Text("Destination from Link")
                    } label: {
                        Text("Navigation Link")
                    }
                    
                    // 2. .ispresented 속성으로 해결 가능
                    Button("Button Link"){
                        showSheet = false
                        navigate = true
                    }
                }
            })
            .navigationDestination(isPresented: $navigate) {
                Text("Destination from Button")
            }
        }
    }
}


// model

struct ProductForNav: Hashable {
    var name: String
    var price: Double
}

struct DateForNav: Hashable {
    var name: String
    var date: Date
}

// view
struct NavigationWithPath: View {
    
    // navigation path로 모델로 부터 받은 컬렉션 타입의 데이터를 navigation destination(목적지)로 넘긴다.
    @State private var product = ProductForNav(name: "Iphone 15 pro", price: 150.99)
    @State private var date = DateForNav(name: "구매한 날짜", date: .now)
    
    @State private var navPath = NavigationPath()
    
    
    var body: some View {
        NavigationStack(path: $navPath){
            VStack(spacing: 20){
                List {
                    NavigationLink(value: product) {
                        Text(product.name)
                    }
                    
                    NavigationLink(value: date) {
                        Text(date.name)
                    }
                }
            }
            .navigationTitle("order")
            // for로 넘어갈 값과 destination 목적지 정함
            .navigationDestination(for: ProductForNav.self) { product in
                List {
                    Text(product.name)
                    Text(product.price, format: .currency(code: "USD"))
                }
                .navigationTitle("Price Detail")
            }
            
            .navigationDestination(for: DateForNav.self) { when in
                List {
                    Text(when.name)
                    Text(when.date.formatted(date: .long, time: .omitted))
                        .foregroundStyle(.secondary)
                }
                .navigationTitle("Price Detail")
            }
            
        }
        .font(.headline)
        
    }
}


#Preview ("Navigation") {
    NavigationBasic()
}


#Preview ("NavigationWithSheet") {
    NavigationWithSheet()
}


#Preview ("Path") {
    NavigationWithPath()
}
