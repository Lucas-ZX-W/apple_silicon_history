//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  An empty, user-editable source file. Part of the "UserModule" user module.
//

//import SwiftUI
//import PlaygroundSupport
//
//public struct CISCRISCView: View {
//    
//    var showMULResult: Bool
//    var MULA: Int
//    var MULB: Int
//    
//    var showLoadA: Bool
//    var PRODA: Int
//    var showLoadB: Bool
//    var PRODB: Int
//    var showPRODAB: Bool
//    var showSTOREA: Bool
//    
//    public init(MULR: Bool, MULA: Int, MULB: Int, LOADA: Bool, PRODA: Int, LOADB: Bool, PRODB: Int, PRODAB: Bool, STOREA: Bool) {
//        self.showMULResult = MULR
//        self.MULA = MULA
//        self.MULB = MULB
//        self.showLoadA = LOADA
//        self.PRODA = PRODA
//        self.showLoadB = LOADB
//        self.PRODB = PRODB
//        self.showPRODAB = PRODAB
//        self.showSTOREA = STOREA
//    }
//    
//    public var body: some View {
//        VStack(alignment: .leading, spacing: 10) {
//            Text("Last login: Wed Apr 20 1994 21:58:18 on ttys002")
//            Text("Swifty@Swiftys-Power-Macintosh-8100/100:/Users/Lucas$ ")
//            //            if (showMULResult) {
//            Text("MUL(\(MULA), \(MULB))")
//            Text("Stored result of MUL = \(MULA) * \(MULB) = \(MULA * MULB)")
//            //            }
//            if (showLoadA) {
//                Text("LOAD(a)")
//                Text("Loaded register a into Stack with value \(PRODA)")
//            } else {}
//            if (showLoadB) {
//                Text("LOAD(b)")
//                Text("Loaded register b into Stack with value \(PRODB)")
//            }
//            if (showPRODAB) {
//                Text("PROD(a, b)")
//                Text("Computed product of values at registers a and b = \(PRODA) * \(PRODB) = \(PRODA * PRODB)")
//            }
//            if (showSTOREA) {
//                Text("STORE(a)")
//                Text("Stored value of previous computation into register a")
//            }
//        }
//    }
//}

//Despite what are likely the best efforts from Intel® engineers to refine the 14nm process
//over the years, its limits are starting to show with high power consumption, high heat generation,
//and underwhelming performance compared to AMD®'s 7nm Zen 3 architecture, the underdog that has
//since became the performance leader in x86 and CISC in the recent years.

//amid the
//underperforming ultra-low-power 5-watt CPUs that lead to the hanging state of
//the now dissappeared 12 inch MacBook and the power hungry, heat generating 6 core i7 and i9s that
//chocked nearly every larger ultrabook in 2018, including the 15 inch MacBook Pro,
