/*:
 OK, so what exactly is this RISC and CISC thing that I suddenly dragged you out to talk about?
 
 Essentially, they're different design principles to how a CPU operates. Here is a simple rundown!
 
 ![Playground Logo](CISCRISCFerriesWheel.png)
 
 Imagine sitting in a gondola in this ferris wheel, and whenever you reach the bottom, you can
 touch a button on the ground.
 
 Now imagine that the ferris wheel is turning really, really fast (like billions of times per
 second!), that means ever second, you can touch the button on the ground billions of times.
 
 If that button does something, this effectively means that you are able to do some task billions
 of times per second, this is concept of a CPU clock.
 
 CISC stands for Complex Instruction Set Computer
 
 RISC stands for Reduced Instruction Set Computer
 
 Here, we'll boot into an old firend of ours to test things out, **use powerOn() to turn on the
 machine and press the "Run My Code" button on the bottom right!** (if the playground gives the "Updated content has 2 editable ranges but original content has 1 editable ranges." errors, simply ignore it as things would still work!)
 
 We'll be trying out some CPU instructions! **Also use the "Run My Code" button after entering the
 instructions!**
 
 ![Playground Logo](X86Pic.png)
 Images above: Top: Generic x86 (CISC architecture) logo
 
 We'll try CISC now to multiple 2 numbers with the MUL instruction in the x86 instruction set
 to multiply 2 numbers. We'll try with MUL(a: num1, b: num2), where num1 and num2 are integer numbers for you to choose!:
 
 Good! That was simple! In CSIC, instructions are designed in a way that many things are abstracted
 either into hardware or into more smaller instructions inside a larger instructions (like the
 MUL that we just tried). So as a result, it would require multiple clock cycles to complete (the
 ferries wheel would have to spin around multiple times to complete the MUL instruction).
 
 ![Playground Logo](armPic.png)
 Image above: the offical logo of arm (RISC architecture)
 
 Now we'll try RISC! But, RISC actually doesn't have the MUL instruction. Instead, RISC's design
 philosophy revolves around simple instructions that only take a single clock cycle to complete
 each instruction. But this means that we'll have to do this manually (note that num1 and num2 here
 are integer numbers!):
 
 - Load a with the LOADA(a: num1) instruction
 - Load b with the LOADB(b: num2) instruction
 - Get the product with the PROD(a: num1, b: num2)
 - Store the product into a with STOREA()
 
 Try entering those instructions and pressing the "Run my Code" button after each time, and see what
 happens!
 */

//#-hidden-code
import SwiftUI
import UIKit
import PlaygroundSupport

func powerOn() {
    let view = CISCRISCView()
    let page = UIHostingController(rootView: view)
    PlaygroundPage.current.liveView = page
}

func MUL(a: Int, b: Int) {
    let view = MULView(MULA: a, MULB: b)
    let page = UIHostingController(rootView: view)
    PlaygroundPage.current.liveView = page
}

func LOADA(a: Int) {
    let view = LOADAView(PRODA: a)
    let page = UIHostingController(rootView: view)
    PlaygroundPage.current.liveView = page
}

func LOADB(b: Int) {
    let view = LOADBView(PRODB: b)
    let page = UIHostingController(rootView: view)
    PlaygroundPage.current.liveView = page
}

func PROD(a: Int, b: Int) {
    let view = PRODABView(PRODA: a, PRODB: b)
    let page = UIHostingController(rootView: view)
    PlaygroundPage.current.liveView = page
}

func STOREA(a: Int) {
    let view = STOREAView()
    let page = UIHostingController(rootView: view)
    PlaygroundPage.current.liveView = page
}

DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
    let letsGOOO = NSLocalizedString("Let's go take a worthy RISC. \n\n[**Next Page**](@next)", comment: "")
    PlaygroundPage.current.assessmentStatus = .pass(message: letsGOOO)
}
//#-end-hidden-code
