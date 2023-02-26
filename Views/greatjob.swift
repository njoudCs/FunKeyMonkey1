// Created by Lujain Mohammed


import SwiftUI
import EffectsLibrary

struct greatjob: View {
  @State private var hasTimeElapsed = false
  @Binding var kidsName: String
  var config = FireworksConfig(
    intensity: .high,
    lifetime: .long,
    initialVelocity: .fast)
  //  @State var trigger: Int = 0
  @AppStorage("KID_NAME") var kidName: String = ""
  
  var body: some View {
    ZStack{
      
     
      if !hasTimeElapsed {
        
        Rectangle()
          .foregroundColor(Color("7"))
          .opacity(88)
          .frame(width: 360 , height: 400)
          .cornerRadius(55)
        
        
        
        
        VStack{
          
          StrokeText(text: "", width: 1, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 40 ,design: .rounded))
            .fontWeight(.heavy)
            .padding(.horizontal)
          
          StrokeText(text: (kidName), width: 1, color: .black)
          StrokeText(text: "Great Job ", width: 1, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 40 ,design: .rounded))
            .fontWeight(.heavy)
            .padding(.bottom)
          
          Image("9")
            .resizable()
            .frame(width: 120,height: 120)
          
            .padding(.bottom,90)
          
          
          
          /*
           NavigationLink(destination: ready(),
           label: { StrokeText(text: "Go", width: 1, color: .black)
           })
           
           
           .frame(width: 220 , height: 100)
           .font(.system(size: 50 , weight: .heavy, design: .rounded))
           .background(Color("yellow"))
           .foregroundColor(Color.white)
           .cornerRadius(60)
           .shadow( radius: 4.0, x: 7.0, y: 7.0)
           
           */
          
          
          
        }
        
        
        
        FireworksView(config: config)
        
        
        
      }
      
      
      else{
        Workout()
      }
      
      
    }.onAppear(perform: { playSouund(sound: "yay", type: "mp3")
      
      DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
        hasTimeElapsed = true }
    })

    
   
    
    
    
  }
  
  
}
  
  
  struct greatjob_Previews: PreviewProvider {
    @State static var kidsName: String = ""
    
    static var previews: some View {
      greatjob(kidsName: $kidsName)
    }
  }
  
  

