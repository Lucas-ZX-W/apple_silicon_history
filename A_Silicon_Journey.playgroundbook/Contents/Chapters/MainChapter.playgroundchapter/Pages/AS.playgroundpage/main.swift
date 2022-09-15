/*:
 ---
 # Please tap the "Run my code" button on the bottom right to summon the "star" of the show! 🍎
 
 # "When we look ahead, we envision some amazing new products, and transitioning to our own custom silicon is what will enable us to bring them to life."
 
 Tim Cook, WWDC 2020, announcing the Intel to Apple Silicon transition for the Mac
 
 Apple Silicon is the umbrella term used to refer to the family of SoC(system-on-a-chip, basically
 CPU + everything else) designed entirely in house by Apple, based on the arm RISC instruction set.
 
 ![Playground Logo](M1.png)
 Image above: Logo of the Apple Silicon M1 SoC
 
 The release of the Apple Silicon M1 SoC in November 2020 marked the start of the third major
 architecture transition for the Mac. However, this transition is arguably unlike any other that
 came before it.
 
 The M1 wasn't a first generation product. Rather, it was the product of over a decade of
 chip engineering since the first Apple in-house SoC design, the A4 tha debutted in the original
 iPad in 2010, with roots tracing back to the iPhone's use of arm and perhaps even the original iPod.
 
 Just like the transition to Intel from 2005-2006, the transition to Apple Silicon was packed with
 compatibility tools and strong performance from the architecture itself. The MacBook Air ran ice
 cold with no fan while outperforming x86 chips consuming more power and generating more heat.
 
 And that's why it was so special. It marked soemthing Apple always wanted to make, perhaps for
 a very, very long time, but couldn't due to Intel®'s roadmap and progress.
 
 Perhaps then, this is a new beggining?
 
 ---
 */

//#-hidden-code
import SwiftUI
import UIKit
import ARKit
import RealityKit
import PlaygroundSupport

let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
let fileURL = Bundle.main.url(forResource: "M1", withExtension: "reality")
let M1Scene = try! Entity.load(contentsOf: fileURL!)

let anchor = AnchorEntity(plane: .horizontal)
anchor.addChild(M1Scene)
//anchor.scale = [4,4,4]
//anchor.position.y = -0.5
arView.scene.anchors.append(anchor)

DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
    let letsGOOO = NSLocalizedString("And that's where we are right now! \n\n[**Next Page**](@next)", comment: "")
    PlaygroundPage.current.assessmentStatus = .pass(message: letsGOOO)
}
//#-end-hidden-code
