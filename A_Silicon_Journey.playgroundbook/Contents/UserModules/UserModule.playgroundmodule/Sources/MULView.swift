//
//  MULView.swift
//  UserModule
//
//  Created by Lucas Wang on 2021-04-14.
//

import SwiftUI
import PlaygroundSupport

public struct MULView: View {
    let MULA: Int
    let MULB: Int
    
    public init(MULA: Int, MULB: Int) {
        self.MULA = MULA
        self.MULB = MULB
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Last login: Wed Apr 20 1994 21:58:18 on ttys002")
            Text("Swifty@Swiftys-Power-Macintosh-8100/100:/Users/Lucas$ ")
            Text("MUL(\(MULA), \(MULB))")
            Text("Stored result of MUL = \(MULA) * \(MULB) = \(MULA * MULB)")
            Spacer()
        }
    }
}
