

import SwiftUI

struct LaunchPage: View {
    @State private var isActive = false
    @State private var size = 0.5
    @State private var opacity = 0.3
  
    
    func animatedImages(for name: String) -> [UIImage] {
        
        var i = 0
        var images = [UIImage]()
        
        while let image = UIImage(named: "\("monkywaving")/\(i)") {
            images.append(image)
            i += 1
        }
        return images
    }
    
    
    
    var body: some View {
        
        
        if isActive {
            //onboarding View
            OnboardingPage()
        
        } else {
            
            
            ZStack{  Color("purple")
                    .ignoresSafeArea()
                
                Image("Back")
              
                    .resizable()
                    //.scaledToFit()
                    .ignoresSafeArea()
                   
                
                VStack{
                    
                    VStack{
                        
                      WorkoutView2()
                        .padding(.bottom, 520.0)

//                            .resizable()
//                            .frame(width: 570, height:800 )
                        
                   
                        
  StrokeText(text: "Funky Monkey", width: 2, color: .black)
      .foregroundColor(Color("yellow"))
      .font(.system(size: 70 ,design: .rounded))
      .padding(.top, 500.0)
                                  .fontWeight(.heavy)
                       
                    }.padding(.bottom, 220.0)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
                
            } .onAppear(perform: {playSouund(sound: "funkymonky", type: "mp3")})
        }
    }
}

struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}

struct LaunchPage_Previews: PreviewProvider {
    static var previews: some View {
        LaunchPage()
    }
}
