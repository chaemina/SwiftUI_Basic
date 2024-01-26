//
//  ObservableViewModel.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import Foundation
import Observation

// MARK: - 기존에 만들었던 뷰 모델 방식
class UserObservableObject: ObservableObject {
    let name: String = "vm1"
    @Published var number: Int = 0
    @Published var isClick: Bool = false
}

// MARK: - ios17부터
@Observable
class UserObservableMacro {
    let name : String = "vm2"
    var number : Int = 0
    var isClick : Bool = false
}
