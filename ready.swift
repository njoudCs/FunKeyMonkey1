// Created by Lujain Mohammed

import SwiftUI
struct ready: View {
  @State private var hasTimeElapsed = false
  
  var body: some View {
    
    
    
    ZStack{
      
      if !hasTimeElapsed {
        CameraView()
        
        
        StrokeText(text: "Are you ready ?", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 60 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.bottom, 800)
        
        
        Image("Tshap-monkey")
          .resizable()
          .scaledToFit()
          .frame(width: 400)
          .padding(.trailing, 333)
        
        ZStack{
        
          
          Rectangle()
          .frame(width: 290, height: 400)
          .foregroundColor(Color("Label"))
          .opacity(0.2)
          .overlay(RoundedRectangle(cornerRadius: 3)
          .stroke(Color.white, lineWidth: 15))
          .padding(.leading, 400)
          
          HStack{
          StrokeText(text: "Stand up here", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 30 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.leading,400)
          }
          
        }
        
        
        
         
         
         .onAppear(perform: {playSouund(sound: "letsgo-app", type: "mp3")})
         
         
         }
         
         else{
         
          ExercisesStart1()
         }
         }
       
        
        
        .onAppear(){
          DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            hasTimeElapsed = true}}
      }
      
    }

  
  struct ready_Previews: PreviewProvider {
    static var previews: some View {
      ready()
    }
  }
  

