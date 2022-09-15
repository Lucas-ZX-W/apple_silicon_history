/*:
 # Please tap the "Run my code" button on the bottom right to summon the stars of the show! ⚡️
 
 The Central Processing Unit (CPU) is the brain of the computer.
 
 ![Playground Logo](IntelOldLogo.png)
 Image above: Intel® Logo from 1968 to 2005
 
 The Intel 4004 was the one that started it all in 1971. The first microprocessor that was truly
 micro. It's 4-bit instruction set meant that it had 2^4 = 16 total uniques instructions, and its
 12-bit address width meant that it had 2^12 = 4096 total unique addresses in memory.
 This is absolutely tiny by today's standards, but it marked the start of the silicon revolution.
  
 7 years later in 1978, the Intel 8086 was introduced. It marked a major milestone in computing as the
 first CPU to use the x86 instruction set, which would go on throughout the decades to "dominate",
 for the most part, the computing industry. Today, Intel® and AMD® (Advanced Micro Devices) are
 responsible for the majority of the CPU market with their x86 64-bit CPUs, across the consumer,
 enterprise, and scientific fields. (But it's not as simple as that!)
 
 The x86 architecture and instruction set is considered a CISC instruction set. But what does that mean?
 
 ---
 */

//#-hidden-code
import SwiftUI
import UIKit
import ARKit
import RealityKit
import PlaygroundSupport

let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
let fileURL = Bundle.main.url(forResource: "IntelOld", withExtension: "reality")
let IntelOldScene = try! Entity.load(contentsOf: fileURL!)

let anchor = AnchorEntity(plane: .horizontal)
anchor.addChild(IntelOldScene)
//anchor.scale = [4,4,4]
//anchor.position.y = -0.5
arView.scene.anchors.append(anchor)

PlaygroundPage.current.liveView = arView

DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
    let letsGOOO = NSLocalizedString("But what's CISC anyways? \n\n[**Next Page**](@next)", comment: "")
    PlaygroundPage.current.assessmentStatus = .pass(message: letsGOOO)
}
//#-end-hidden-code
