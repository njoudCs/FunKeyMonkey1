


import SwiftUI


var image : [UIImage]! = [UIImage(named: "monkywaving/0")!,UIImage(named: "monkywaving/1")!,UIImage(named: "monkywaving/2")!,UIImage(named: "monkywaving/3")!,UIImage(named: "monkywaving/4")!,UIImage(named: "monkywaving/5")!,UIImage(named: "monkywaving/6")!,UIImage(named: "monkywaving/7")!,UIImage(named: "monkywaving/8")!,UIImage(named: "monkywaving/9")!,UIImage(named: "monkywaving/10")!,UIImage(named: "monkywaving/11")!,UIImage(named: "monkywaving/12")!,UIImage(named: "monkywaving/13")!,UIImage(named: "monkywaving/14")!,UIImage(named: "monkywaving/15")!,UIImage(named: "monkywaving/16")!,UIImage(named: "monkywaving/17")!,UIImage(named: "monkywaving/18")!]

let animatedImages = UIImage.animatedImage(with: image, duration: 2.5)

struct workoutAnimation1: UIViewRepresentable {

    func makeUIView(context: Self.Context) -> UIView {
        let someView = UIView(frame: CGRect(x: 0, y: 0, width: 450, height: 750))
        let someImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 450, height: 750))
        someImage.clipsToBounds = true
        someImage.layer.cornerRadius = 20
        someImage.autoresizesSubviews = true
        someImage.contentMode = UIView.ContentMode.scaleAspectFill
        someImage.image = animatedImages
        someView.addSubview(someImage)
        return someView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<workoutAnimation1>) {

    }
}


struct WorkoutView1: View {
    var body: some View {
      VStack{
            workoutAnimation1()
            
      }.padding(.leading, 170)
        .padding(.top, -100)
    }
}


struct WorkoutView1_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView1()
    }
}
