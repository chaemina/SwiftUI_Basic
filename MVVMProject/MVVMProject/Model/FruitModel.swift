//
//  FruitModel.swift
//  MVVMProject
//
//  Created by Caramella on 1/11/24.
//

import Foundation

struct FruitModel: Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}
