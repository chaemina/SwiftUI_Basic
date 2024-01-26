//
//  FrameExtension.swift
//  MVVMProject
//
//  Created by Caramella on 1/12/24.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - ResponsiveScreen

extension CGFloat {
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
}


// MARK: - Frame Modifier

extension View {
    func vCenter() -> some View {
        self.frame(maxHeight: .infinity, alignment: .center)
    }
    func vTop() -> some View {
        self.frame(maxHeight: .infinity, alignment: .top)
    }
    func vBottom() -> some View {
        self.frame(maxHeight: .infinity, alignment: .bottom)
    }
    func hCenter() -> some View {
        self.frame(maxHeight: .infinity, alignment: .center)
    }
    func hTop() -> some View {
        self.frame(maxHeight: .infinity, alignment: .top)
    }
    func hBottom() -> some View {
        self.frame(maxHeight: .infinity, alignment: .bottom)
    }
}
