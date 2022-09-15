/*:
 ---
 # Please tap the "Run my code" button on the bottom right to summon the "star" of the show!
 
 # "You've had big problems with 10nm, now with 7...Who and what at Intel is responsible for this string of problems?"
 
 Jon Fortt, CNBC
 
 # "Well I mean ultimately, I'm responsible."
 
 Bob Swan, former Intel CEO, 2020 interview with CNBC
 
 ![Playground Logo](IntelRoadMap2012.png)
 Image above: unofficial "leaked" slide from Intel®'s 2012 annual investors' meeting
 
 # The race to the smallest
 
 A key factor that contributes to virtually all properties of any CPU is the size of the process
 that it was manufactored on. The smaller the process can be, the more can fit in any given space.
 Which results in less heat, less power, and more performance.
 
 In 2012, things seemed all well and good. With the 22nm Haswell architecture planned to launch
 in 2013, 14nm later in 2015 and 2016, it seemed that Intel® was well on its track to reach 7 nm
 by around 2017-8 and 5 nm by the end of the decade. This roadmap would enable Intel® to be able
 to produce chips that are increasingly more power efficient and powerful, a key factor in the
 growing laptop market.
 
 ![Playground Logo](Intel10thgen.png)
 Image above: Logos for Intel's 10th generation CPUs released late 2019 and early 2020
 
 Fast forward to 2021, Intel®'s most recent desktop CPUs, the Rocket Lake™ series, are still
 manufactured on the refined, but ultimately similar, 14nm process first introduced with SkyLake™
 in 2016.
 
 While we don't know exactly what or when happened inside Apple, we can be sure that a decision was
 concretely made that Intel's future roadmap, just like how Jobs had described the situation with
 the PowerPC™ roadmap a decade ago, will become a limitation rather than an aid.
 
 ---
 */

//#-hidden-code
import SwiftUI
import UIKit
import ARKit
import RealityKit
import PlaygroundSupport

let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
let fileURL = Bundle.main.url(forResource: "Corei9", withExtension: "reality")
let Corei9Scene = try! Entity.load(contentsOf: fileURL!)

let anchor = AnchorEntity(plane: .horizontal)
anchor.addChild(Corei9Scene)
//anchor.scale = [4,4,4]
//anchor.position.y = -0.5
arView.scene.anchors.append(anchor)

DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
    let letsGOOO = NSLocalizedString("Deja Vu, I think that we've been here before. \n\n[**Next Page**](@next)", comment: "")
    PlaygroundPage.current.assessmentStatus = .pass(message: letsGOOO)
}
//#-end-hidden-code
