/*:
 ---
 # Please tap the "Run my code" button on the bottom right to summon the star of the show! 🍎
 
 In 1991, an alliance was born between Apple, IBM®, and Motorola® to develop the PowerPC™
 architecture of RISC CPUs, entering a consumer computing market then dominated with
 Intel®'s x86 CISC CPUs.
 
 ![Playground Logo](PowerPC.png)
 Image above: PowerPC™ logo
 
 The first PowerPC™ Macintosh computers were released in 1994 equipped with the PowerPC™ 601
 processor. The transition to PowerPC™ from the Motorola 68000 CISC architecture marked the first
 appearance of a RISC archiecture in Apple computers. Throuhgout the 1990s and the early 2000s,
 the Macintosh/Mac's PowerPC™ CPUs performed formiadably with Intel®'s x86 Pentium™ series.
 
 However, as the 2000s carried on, the computing world would start taking new shapes. It was during
 this time that RISC found both its olive branch in the ultra-portable segment with the arm
 architecture powering devices such as the iPod, and its (temporary?) end in the
 desktop/laptop computing segment as PowerPC™'s unstellar power to performance ratio. This meant
 that these power hungry PowerPC™ chips were not suitable for laptops as well as becoming
 increasingly uncompetitive with Intel's advancements in both performance and power efficiency,
 two very important factors in a growing mobile market.
 
 However, was it ever this simple?
 
 ---
 */

//#-hidden-code
import SwiftUI
import UIKit
import ARKit
import RealityKit
import PlaygroundSupport

let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
let fileURL = Bundle.main.url(forResource: "PPC", withExtension: "reality")
let PPCScene = try! Entity.load(contentsOf: fileURL!)

let anchor = AnchorEntity(plane: .horizontal)
anchor.addChild(PPCScene)
//anchor.scale = [4,4,4]
//anchor.position.y = -0.5
arView.scene.anchors.append(anchor)

PlaygroundPage.current.liveView = arView

DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
    let letsGOOO = NSLocalizedString("Is this the end? \n\n[**Next Page**](@next)", comment: "")
    PlaygroundPage.current.assessmentStatus = .pass(message: letsGOOO)
}
//#-end-hidden-code
