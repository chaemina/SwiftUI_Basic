//
//  MVVMProjectApp.swift
//  MVVMProject
//
//  Created by Caramella on 1/11/24.
//

import SwiftUI

@main
struct MVVMProjectApp: App {
    
    
    // 기존의 전역 변수 생성 방식
    @StateObject private var vm1 = UserObservableObject()
    
    // ios 17부터 변경 된 방식
    @State private var vm2 = UserObservableMacro()
    
    
    var body: some Scene {
        WindowGroup {
            ObservableView()
                .environmentObject(vm1) // 기존 방식
                .environment(vm2) // ios17 부터 
        }
    }
}
