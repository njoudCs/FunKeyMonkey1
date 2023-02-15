//
//  forTrying.swift
//  FunkyMonkeyLaunch
//
//  Created by Hadeel Alturaier on 23/07/1444 AH.
//

import SwiftUI

//struct forTrying: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct forTrying_Previews: PreviewProvider {
//    static var previews: some View {
//        forTrying()
//    }
//}
//



import SwiftUI


var images : [UIImage]! = [UIImage(named: "monky-exercise/0")!, UIImage(named: "monky-exercise/1")!, UIImage(named: "monky-exercise/2")!,UIImage(named: "monky-exercise/3")!,UIImage(named: "monky-exercise/4")!,UIImage(named: "monky-exercise/5")!,UIImage(named: "monky-exercise/6")!,UIImage(named: "monky-exercise/7")!,UIImage(named: "monky-exercise/8")!,UIImage(named: "monky-exercise/9")!,UIImage(named: "monky-exercise/10")!,UIImage(named: "monky-exercise/11")!,UIImage(named: "monky-exercise/12")!,UIImage(named: "monky-exercise/13")!,UIImage(named: "monky-exercise/14")!,UIImage(named: "monky-exercise/15")!,UIImage(named: "monky-exercise/16")!,UIImage(named: "monky-exercise/17")!,UIImage(named: "monky-exercise/18")!,UIImage(named: "monky-exercise/19")!,UIImage(named: "monky-exercise/20")!,UIImage(named: "monky-exercise/21")!,UIImage(named: "monky-exercise/22")!,UIImage(named: "monky-exercise/23")!,UIImage(named: "monky-exercise/24")!,UIImage(named: "monky-exercise/25")!,UIImage(named: "monky-exercise/26")!,UIImage(named: "monky-exercise/27")!,UIImage(named: "monky-exercise/28")!,UIImage(named: "monky-exercise/29")!,UIImage(named: "monky-exercise/30")!,UIImage(named: "monky-exercise/31")!,UIImage(named: "monky-exercise/32")!,UIImage(named: "monky-exercise/33")!,UIImage(named: "monky-exercise/34")!,UIImage(named: "monky-exercise/35")!,UIImage(named: "monky-exercise/38")!]

let animatedImage = UIImage.animatedImage(with: images, duration: 2.5)

struct workoutAnimation: UIViewRepresentable {

    func makeUIView(context: Self.Context) -> UIView {
        let someView = UIView(frame: CGRect(x: 0, y: 0, width: 450, height: 750))
        let someImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 450, height: 750))
        someImage.clipsToBounds = true
        someImage.layer.cornerRadius = 20
        someImage.autoresizesSubviews = true
        someImage.contentMode = UIView.ContentMode.scaleAspectFill
        someImage.image = animatedImage
        someView.addSubview(someImage)
        return someView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<workoutAnimation>) {

    }
}


struct WorkoutView: View {
    var body: some View {
        VStack (alignment: HorizontalAlignment.center, spacing: 10) {
            workoutAnimation()
            Text("zzzz")
        }
    }
}


struct forTrying_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
