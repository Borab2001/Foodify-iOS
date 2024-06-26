//
//  Color+Extensions.swift
//  foodify
//
//  Created by Bora Balos on 24/06/2024.
//

import SwiftUI

extension Color {
    static let secondaryBlack = Color(hex: "161618")
    static let primaryGray = Color(hex: "818181")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0
        scanner.scanHexInt64(&hexNumber)
        
        let r = Double((hexNumber & 0xff0000) >> 16) / 255
        let g = Double((hexNumber & 0x00ff00) >> 8) / 255
        let b = Double(hexNumber & 0x0000ff) / 255
        
        self.init(red: r, green: g, blue: b)
    }
}
