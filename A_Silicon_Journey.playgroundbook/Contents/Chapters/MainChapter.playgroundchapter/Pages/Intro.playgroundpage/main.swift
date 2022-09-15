/*:
 # Please tap the "Run my code" button on the bottom right to summon the star of the show! 🍎
 # Note: this book requires AR capabilities to run properly
 # Is that a MacBook Air!? 💻
 
 Well, it's not just any MacBook Air. That's the new(er) Apple Silicon MacBook Air
 released last November!
 
 Hmmmm, but it kinda looks exactly like the Late 2018 MacBook Air though, I wonder
 what's so special about it? 🤔
 
 Well, aside from the fact that a complete redesign isn't yet here, there's some
 vErY interesting things inside that laptop.
 
 Hmmmmm, I wonder what that could possibly be? 🧐
 
 Well, in order to know that, we must take a trip down memory line, down the vertex of
 time to the one that started it all!
 
 **Note: for all pages:**
 If the camera pops up, move your device around so that it can detect a horizontal surface to put
 things on!
 
 If there appears to be no option to go to the next page,
 please wait for a tiny bit as you seem to be a fast reader!
 
 ![Playground Logo](AS.png)
 
 Image above: Apple Silicon "Logo"
 
 */

//#-hidden-code
import SwiftUI
import UIKit
import ARKit
import RealityKit
import PlaygroundSupport

let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
let fileURL = Bundle.main.url(forResource: "MBA", withExtension: "reality")
let MBAScene = try! Entity.load(contentsOf: fileURL!)

let anchor = AnchorEntity(plane: .horizontal)
anchor.addChild(MBAScene)
//anchor.scale = [4,4,4]
//anchor.position.y = -0.5
arView.scene.anchors.append(anchor)

PlaygroundPage.current.liveView = arView

DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
    let letsGOOO = NSLocalizedString("Let's enter the museum! \n\n[**Next Page**](@next)", comment: "")
    PlaygroundPage.current.assessmentStatus = .pass(message: letsGOOO)
}
//#-end-hidden-code
