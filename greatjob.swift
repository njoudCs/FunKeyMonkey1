// Created by Lujain Mohammed


import SwiftUI
import EffectsLibrary

struct greatjob: View {
  @Binding var kidsName: String
  var config = FireworksConfig(
    intensity: .high,
    lifetime: .long,
    initialVelocity: .fast)
  //  @State var trigger: Int = 0
  
  var body: some View {
    ZStack{
      Rectangle()
        .foregroundColor(Color("7"))
        .opacity(88)
        .frame(width: 360 , height: 400)
        .cornerRadius(55)
      
      VStack{
        StrokeText(text: "jori\(self.kidsName)", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 40 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.horizontal)
        
        
        StrokeText(text: "Great Job", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 40 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.bottom)
        
        
        Image("9")
          .resizable()
          .frame(width: 120,height: 120)
        
          .padding(.bottom,90)
        
        
        
      }
      
      
      
      NavigationLink(destination: Workout(),
                     label: { StrokeText(text: "Start", width: 1, color: .black)
      }
      )
      
      .frame(width: 150 , height: 70)
      
      .font(.system(size: 40 , weight: .heavy, design: .rounded))
      .background(Color("yellow"))
      
      .foregroundColor(Color.white)
      .cornerRadius(60)
      .shadow( radius: 4.0, x: 7.0, y: 7.0)
      .padding(.top,270)
      
      
      
      
      
      
      FireworksView(config: config)

      
    }
    //    .onAppear(perform: {
    //        trigger = 1
    
    //    })
    .onAppear(perform: {playSouund(sound: "yay", type: "mp3")})
    
    //    .confettiCannon(counter: $trigger,confettis: [.text("🍌"), .text("🍌"), .text("🍌"), .text("🍌")], confettiSize: 60, repetitions: 20)
    //
    //
    //  }
    
    
    
    
  }

  
  
  
  
  struct greatjob_Previews: PreviewProvider {
    @State static var kidsName: String = ""
    
    static var previews: some View {
      greatjob(kidsName: $kidsName)
    }
  }
  
  
}
