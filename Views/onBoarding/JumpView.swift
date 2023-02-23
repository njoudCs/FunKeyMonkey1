
import SwiftUI


var image2 : [UIImage]! = [UIImage(named: "jumb/0")!, UIImage(named: "jumb/1")!,UIImage(named: "jumb/2")!, UIImage(named: "jumb/3")!, UIImage(named: "jumb/4")!, UIImage(named: "jumb/5")!, UIImage(named: "jumb/6")!, UIImage(named: "jumb/7")!, UIImage(named: "jumb/7")!, UIImage(named: "jumb/8")!, UIImage(named: "jumb/9")!, UIImage(named: "jumb/10")!, UIImage(named: "jumb/11")!, UIImage(named: "jumb/12")!, UIImage(named: "jumb/13")!, UIImage(named: "jumb/14")!, UIImage(named: "jumb/15")!, UIImage(named: "jumb/16")!, UIImage(named: "jumb/17")!, UIImage(named: "jumb/18")!, UIImage(named: "jumb/19")!, UIImage(named: "jumb/20")!, UIImage(named: "jumb/21")!, UIImage(named: "jumb/22")!]

let animatedImages2 = UIImage.animatedImage(with: image2, duration: 3)

struct workoutAnimation2: UIViewRepresentable {

    func makeUIView(context: Self.Context) -> UIView {
        let someView = UIView(frame: CGRect(x: 0, y: 0, width: 750, height: 1050))
        let someImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 750, height:1050))
        someImage.clipsToBounds = true
//        someImage.layer.cornerRadius = 20
        someImage.autoresizesSubviews = true
        someImage.contentMode = UIView.ContentMode.scaleAspectFill
        someImage.image = animatedImages2
        someView.addSubview(someImage)
        return someView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<workoutAnimation2>) {

    }
}


struct WorkoutView2: View {
    var body: some View {
      VStack{
            workoutAnimation2()
                
      }
          .padding(.leading, 40)
      
//        .padding(.top, 100)
    }
  
}


struct WorkoutView2_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView2()
    }
}
