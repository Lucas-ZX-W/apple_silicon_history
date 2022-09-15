/*:
 ---
 # Please tap the "Run my code" button on the bottom right to summon the stars of the show! ⚙️
 
 # "As we look ahead, we can envision some amazing products we wanna build for you, and we don't know how to build them with the future PowerPC roadmap. And that's why we're gonna do this."
 
 Steve Jobs, WWDC 2005, announcing the PowerPC to Intel transition for the Mac
 
 ![Playground Logo](FirstIntelMac.png)
 Image above: then Intel® CEO Paul Otellini at the Apple release event of the first Intel Mac, 2006
 
 As Jobs was joined by then Intel® CEO Paul Otellini in Janurary 2006 walking out of
 a cloud of smoke in a lab suit holding a silicon wafer, the future of the Mac seemed clear.
 x86 seemed to have won the silicon race, and that the Mac will join the rest of the computing
 market.
 
 The Intel® transition itself was a considerably quick process. It took about one year for the
 entire Mac lineup to be released with Intel® Core™ CPUs. It also marked the first appearance of the
 Rosetta compatiability layer, a translation layer that aims to make PowerPC™ applications
 compatible with Intel® Macs.
 
 At the end, it seemed that Jobs was correct about the rationale behind the transition. PowerPC™'s
 diminishing power efficiency meant that it was simply not possible to bring products such as the
 MacBook Air and later the 2012 MacBook Pro to market. For the next decade and a half, x86 was the
 Mac's, and most other computers', architecture of choice.
 
 However, the 2000s also marked a major direction for RSIC and the arm architecture. One that was
 arguably created by Apple.
 
 # In 2007, the iPhone started a future of smartphones and a whole new domination for RISC and arm
 
 ![Playground Logo](OGIphone.png)
 Image above: Apple iPhone logo, 2007 to 2013
 
 The APL0098 was the CPU/SoC (system-on-a-chip) equipped by the original 2007 iPhone. Though Apple's
 first in-house CPU/SoC came with the original iPad in 2010, the iPhone's APL0098 was arguably the
 RISC chip that started the revolution of mobile devices, a category of devices that could take
 great advantage of RISC's simpler design philosophy.
 
 # Released about 2 year apart, the APL0098 and the Core 2 Duo represented 2 worlds:
 
 The RISC world of
 mobile devices and the CISC world of desktop/laptop computing. These 2 world would grow to be
 extremely seperated, where any attempts to merge the 2 resulted in less than stellar results.
 With a range of obstacles such as compatiability and the seemingly stellar performance of x86, it
 would take a very specific series of events for anything to change.
 
 ---
 */

//#-hidden-code
import SwiftUI
import UIKit
import ARKit
import RealityKit
import PlaygroundSupport

let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
let fileURL = Bundle.main.url(forResource: "CoreAPL", withExtension: "reality")
let CoreAPLScene = try! Entity.load(contentsOf: fileURL!)

let anchor = AnchorEntity(plane: .horizontal)
anchor.addChild(CoreAPLScene)
//anchor.scale = [4,4,4]
//anchor.position.y = -0.5
arView.scene.anchors.append(anchor)

DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
    let letsGOOO = NSLocalizedString("The struggle of 14. \n\n[**Next Page**](@next)", comment: "")
    PlaygroundPage.current.assessmentStatus = .pass(message: letsGOOO)
}
//#-end-hidden-code
