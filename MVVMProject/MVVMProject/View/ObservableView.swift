//
//  ObservableView.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import SwiftUI

struct ObservableView: View {
    
    //기존에 뷰모델에서 뷰로 가져오는 법
    @EnvironmentObject private var vm1 : UserObservableObject
    
    // ios17 부터
    @Environment(UserObservableMacro.self) private var vm2
    
    var body: some View {
        
        // ios 17은 Bindable해줘야 바디와 연결 가능
        
        @Bindable var vm2 = vm2
        
        
    }
}

#Preview {
    ObservableView()
        .environmentObject(UserObservableObject())
        .environment(UserObservableMacro())
}
