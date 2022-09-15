//
//  LOADBView.swift
//  UserModule
//
//  Created by Lucas Wang on 2021-04-18.
//

import SwiftUI
import PlaygroundSupport

public struct LOADBView: View {
    let PRODB: Int
    
    public init(PRODB: Int) {
        self.PRODB = PRODB
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Last login: Wed Apr 20 1994 21:58:18 on ttys002")
            Text("Swifty@Swiftys-Power-Macintosh-8100/100:/Users/Lucas$ ")
            Text("LOAD(b)")
            Text("Loaded register b into Stack with value \(PRODB)")
            Spacer()
        }
    }
}
