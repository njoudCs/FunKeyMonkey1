

import SwiftUI
import AVFoundation
struct LaunchPage: View {
    @State private var isActive = false
    @State private var size = 0.5
    @State private var opacity = 0.3
  private let synthesizer = AVSpeechSynthesizer()
  
  var rate: Float = AVSpeechUtteranceDefaultSpeechRate

  func say (_ phrase: String) {
    
    let utterance = AVSpeechUtterance(string: phrase)
    utterance.rate = rate
    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    
    synthesizer.speak(utterance)
  }
    
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
                
                VStack{
                    
                    VStack{
                        
                        Image("MonkeyHi")
                            .resizable()
                            .frame(width: 570, height:800 )
                        
                   
                        
                        StrokeText(text: "Funky Monkey", width: 2, color: .black)
                                  .foregroundColor(Color("yellow"))
                                  .font(.system(size: 70 ,design: .rounded))
                                  .fontWeight(.heavy)
                       
                    }
                }
                .onAppear {
                  say("Funkey Monkey")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
                
            }
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
