//
//  UserModel.swift
//  MVVMProject
//
//  Created by Caramella on 1/11/24.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked : Bool
}
