//
//  PRODABView.swift
//  UserModule
//
//  Created by Lucas Wang on 2021-04-18.
//

import SwiftUI
import PlaygroundSupport

public struct PRODABView: View {
    let PRODA: Int
    let PRODB: Int
    
    public init(PRODA: Int, PRODB: Int) {
        self.PRODA = PRODA
        self.PRODB = PRODB
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Last login: Wed Apr 20 1994 21:58:18 on ttys002")
            Text("Swifty@Swiftys-Power-Macintosh-8100/100:/Users/Lucas$ ")
            Text("PROD(a, b)")
            Text("Computed product of values at registers a and b = \(PRODA) * \(PRODB) = \(PRODA * PRODB)")
            Spacer()
        }
    }
}
