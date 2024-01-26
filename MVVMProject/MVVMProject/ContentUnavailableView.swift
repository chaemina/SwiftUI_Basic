//
//  ContentUnavailableView.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import SwiftUI

struct ContentUnavailableViewBasic: View {
    
    // error 시 나타날 뷰를 만든다.
    
    var body: some View {
        ContentUnavailableView("BAD CONNECTION", systemImage: "wifi.exclamationmark", description: Text("인터넷이 연결 되어있지 않습니다."))
    }
}

#Preview {
    ContentUnavailableViewBasic()
}
